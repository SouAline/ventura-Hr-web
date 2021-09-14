package br.edu.infnet.domain.model;

public class Criterio {

    private Integer id;
    private String descricao;
    private int perfil;
    private int numero;

    public Criterio(){

    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getPerfil() {
        return perfil;
    }

    public void setPerfil(int perfil) {
        this.perfil = perfil;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }
}
