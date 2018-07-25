/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.memorias.Servlet.Usuario;

import com.mycompany.memorias.Hibernate.HibernateUtil;
import com.mycompany.memorias.Models.Memorias;
import com.mycompany.memorias.Models.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Aluno
 */
public class AdicionaMemoria extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        HttpSession sessao = request.getSession();
        String acao = "";
        Memorias memoria = new Memorias();
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        byte[] foto = null;
        if (request != null) {
            if (ServletFileUpload.isMultipartContent(request)) {
                try {
                    List<FileItem> m = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                    for (FileItem item : m) {
                        if (!item.isFormField()) {
                            foto = item.get();
                            memoria.setFoto(foto);
                        } else {
                            switch (item.getFieldName()) {
                                case "nameM":
                                    memoria.setNome(item.getString());
                                    break;
                                case "descriptionM":
                                    memoria.setDescricao(item.getString());
                                    break;
                                case "dataM":
                                    Date date = sdf.parse(item.getString());
                                    memoria.setDataDoFato(date);
                                    break;
                                case "quemM":
                                    memoria.setUsuarios(item.getString());
                                    break;
                                case "option":
                                    String opcaoP = item.getString();
                                    if (opcaoP == "1") {
                                        memoria.setPublico(false);
                                    } else {
                                        memoria.setPublico(false);
                                    }
                                    break;
                                case "option1":
                                    String opcaoG = item.getString();
                                    if (opcaoG == "P") {
                                        memoria.setGrupos("Pessoa");
                                    } else {
                                        memoria.setGrupos("Grupo");
                                    }
                                    break;
                            }
                            System.out.print(acao);
                        }
                    }
                } catch (ParseException ex) {
                    response.getWriter().println("EX: " + ex.getMessage());
                } catch (FileUploadException ex) {
                    Logger.getLogger(AdicionaMemoria.class.getName()).log(Level.SEVERE, null, ex);
                }
                Usuario autor = (Usuario) sessao.getAttribute("usuario_logado");
                memoria.setAutor(autor);
                HibernateUtil<Memorias> hup = new HibernateUtil<>();
                
                    String s = hup.salvar(memoria);
               
                response.sendRedirect("Interface/Perfil.jsp");
            }
        }
    }

}
