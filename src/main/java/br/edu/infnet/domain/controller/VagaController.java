package br.edu.infnet.domain.controller;

import br.edu.infnet.domain.model.Criterio;
import br.edu.infnet.domain.model.Usuario;
import br.edu.infnet.domain.model.Vaga;
import br.edu.infnet.domain.service.VagaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class VagaController {

    @Autowired
    private VagaService vagaService;

    @GetMapping(value = "/postaVaga")
    public String buscaFormulario(){
        return "/empresa/postaVaga";
    }

    @PostMapping(value = "/descricao")
    public ModelAndView cadastrarVaga(Vaga vaga, HttpServletRequest request){
        ModelAndView resposta = new ModelAndView("/empresa/postaVaga");
        HttpSession session = request.getSession();
        session.setAttribute("vaga", vaga);

        return resposta;
    }

    @PostMapping(value = "/criterios")
    public ModelAndView cadastraCriterio(Criterio criterio, HttpServletRequest request){
        ModelAndView resposta = new ModelAndView("/empresa/postaVaga");
        HttpSession session = request.getSession();
        List criterios = (List) session.getAttribute("criterios");

        if (criterios == null) {
            criterios = new ArrayList<>();
        }

        criterios.add(criterio);
        session.setAttribute("criterios", criterios);

        return resposta;
    }

    @PostMapping(value = "/publicar")
    public String mostrarVaga(HttpServletRequest request, Model model){
        HttpSession session = request.getSession();
        Usuario usuario = (Usuario) session.getAttribute("usuario");
        Vaga vaga = (Vaga) session.getAttribute("vaga");
        List criterios = (List) session.getAttribute("criterios");
        vaga.setCriterioList(criterios);
        vagaService.criarVaga(vaga);
        List<Vaga> vagas = vagaService.listarPorId(usuario.getId());
        model.addAttribute("vagas", vagas);


        session.removeAttribute("vaga");
        session.removeAttribute("criterios"); // remove os atributos da sessão
        return "/empresa/index";
    }

}
