package com.soulcode.goserviceapp.event;

import com.soulcode.goserviceapp.domain.Usuario;
import com.soulcode.goserviceapp.domain.UsuarioLog;
import com.soulcode.goserviceapp.service.UsuarioLogService;
import com.soulcode.goserviceapp.service.UsuarioService;
import com.soulcode.goserviceapp.service.exceptions.UsuarioNaoEncontradoException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.event.EventListener;
import org.springframework.security.authentication.event.AuthenticationSuccessEvent;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

@Component
public class AuthenticationSuccessListener {

    @Autowired
    private UsuarioService usuarioService;

    @Autowired
    private UsuarioLogService usuarioLogService;

    @EventListener
    public void onAuthenticationSuccess(AuthenticationSuccessEvent event){
        try {
            String email = event.getAuthentication().getName();
            Usuario usuario = usuarioService.findByEmail(email);
            UsuarioLog usuarioLog = new UsuarioLog(usuario);
            usuarioLogService.create(usuarioLog);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}