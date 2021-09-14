package br.edu.infnet.domain.service;

import br.edu.infnet.domain.model.Vaga;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@FeignClient(url="http://localhost:8083/vagas", name = "vagas")
public interface VagaService {

    @GetMapping( value = "/usuario/{id}")
    List<Vaga> listarPorId(@PathVariable String id);


    @PostMapping
    Vaga criarVaga(Vaga vaga);
}
