package br.edu.infnet.domain.service;

import br.edu.infnet.domain.model.Usuario;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@FeignClient(url="http://localhost:8082/usuarios", name = "usuarios")
public interface UsuarioService {


    @GetMapping(value = "/email/{email}")
    Usuario obterPorEmail(@PathVariable ("email") String email);

    @PostMapping
    Usuario criarConta(Usuario usuario);
}
