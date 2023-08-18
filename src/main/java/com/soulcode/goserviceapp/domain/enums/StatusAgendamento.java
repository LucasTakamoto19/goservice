package com.soulcode.goserviceapp.domain.enums;

public enum StatusAgendamento {
    AGUARDANDO_CONFIRMACAO("Aguardando Confirmação"),
    CONFIRMADO("Confirmado"),
    CONCLUIDO("Concluido"),
    CANCELADO_PELO_CLIENTE("Cancelado pelo cliente"),
    CANCELADO_PELO_PRESTADOR("Cancelado pelo prestador");


    private final String descricao;

    StatusAgendamento(String descricao) {
        this.descricao = descricao;
    }

    public String getDescricao() {
        return descricao;
    }
}
