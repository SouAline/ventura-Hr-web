package br.edu.infnet.domain.controller;

import br.edu.infnet.domain.model.Usuario;
import br.edu.infnet.domain.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UsuarioController {

    @Autowired
    private UsuarioService usuarioService;

    @GetMapping(value = "/usuario")
    public String telaCadastro() {
        return "/usuario/registro";
    }

    @PostMapping(value = "/usuario")
    public String registrar(Model model, Usuario usuario) {
        usuarioService.criarConta(usuario);
        model.addAttribute("user", usuario);
        String cxEntrada = null;

        if (usuario.getTipo() == Usuario.EMPRESA) {
            cxEntrada = "/empresa/index";
        } else if (usuario.getTipo() == Usuario.CANDIDATO) {
            cxEntrada = "/candidato/index";
        } else {
            cxEntrada = "/administrador/index";
        }
        return cxEntrada;
    }
}


