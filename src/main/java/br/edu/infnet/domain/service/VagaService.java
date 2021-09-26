package br.edu.infnet.domain.service;

import br.edu.infnet.domain.model.Vaga;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@FeignClient(url="http://localhost:8083/vagas", name = "vagaService")
public interface VagaService {

    @GetMapping(value = "/usuario/{usuarioId}")
    List<Vaga> listarPorId(@PathVariable Integer usuarioId);

    @PostMapping
    Vaga criarVaga(Vaga vaga);
}
