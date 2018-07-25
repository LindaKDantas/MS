/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.memorias.Servlet.Usuario;


import com.mycompany.memorias.Hibernate.HibernateUtil;
import com.mycompany.memorias.Models.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Linda.
 */
public class CadastroUsuario extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Usuario usuario = new Usuario();

        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        try {            
            Date date = sdf.parse(request.getParameter("inputData"));
            usuario.setDataNasc(date);

            usuario.setEmail(request.getParameter("inputEmail"));
            usuario.setNacionalidade(request.getParameter("inputPais"));
            usuario.setNome(request.getParameter("inputName"));
            usuario.setSenha(request.getParameter("inputSenha"));
            PrintWriter out = response.getWriter();

            HttpSession sessao = request.getSession();
            HibernateUtil<Usuario> hup = new HibernateUtil<>();
            String s = hup.salvar(usuario);
            sessao.setAttribute("usuario_logado", usuario);
            response.sendRedirect("Interface/Perfil.jsp");
        } catch (ParseException ex) {
            response.getWriter().println("EX: "+ex.getMessage());
        }

    }
}
