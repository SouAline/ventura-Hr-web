package br.edu.infnet.domain.controller;

import br.edu.infnet.domain.model.Usuario;
import br.edu.infnet.domain.service.UsuarioService;
import br.edu.infnet.domain.service.VagaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;


@SessionAttributes("user")
@Controller
public class AcessoController {

    @Autowired
    private UsuarioService usuarioService;
    @Autowired
    private VagaService vagaService;

    @GetMapping(value = "/")
    public String telaHome() {
        return "/home";
    }

    @GetMapping(value="/login")
    public String telaLogin(){
        return "/login";
    }


    @GetMapping(value="/empresa/home/{id}")
    public ModelAndView empresaHome(@PathVariable String id){
        List vagas = vagaService.listarPorId(id);
        ModelAndView resposta = new ModelAndView("/empresa/home");
        resposta.addObject("vagas", vagas);
        return resposta;
    }

    @PostMapping(value = "/login")
    public String login(Model model, @RequestParam String email, @RequestParam String senha) {
        Usuario usuario = usuarioService.obterPorEmail(email);
        if (usuario != null && email.equals(usuario.getEmail()) && senha.equals((usuario.getSenha()))) {
            model.addAttribute("usuario", usuario);
            String caixaEntrada = null;
            if (usuario.getTipo() == Usuario.EMPRESA) {
                List vagas = vagaService.listarPorId(String.valueOf(usuario.getId()));
                model.addAttribute("vagas", vagas);
                caixaEntrada = "/candidato/home";
            } else {
                caixaEntrada = "/administrador/home";
            }
            return caixaEntrada;

        } else {
            model.addAttribute("menssagem", "Úsuario inválido!!" + email);
        }
        return "/login";

    }

    @GetMapping(value = "/logout")
        public String logout (HttpSession session, SessionStatus status){
            status.setComplete();
            session.removeAttribute("user");
            return "redirect:/";
        }
    }

