/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package api;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import org.json.JSONArray;
import org.json.JSONObject;
import Cadastro.Usuario;
import java.util.ArrayList;

/**
 *
 * @author morat
 */
@WebServlet(name = "ConexAplicJavaBD", urlPatterns = {"/apiBD"})
public class UsuarioServlet extends HttpServlet {

    private JSONObject getJSONBody(BufferedReader reader) throws Exception {
        StringBuilder buffer = new StringBuilder();
        String line = null;
        while ((line = reader.readLine()) != null) {
            buffer.append(line);
        }
        return new JSONObject(buffer.toString());
    }

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json;charset=UTF-8");
        JSONObject file = new JSONObject();

        try {
            
            file.put("exception", Usuario.exception);
            ArrayList<Usuario> list = Usuario.getList();
            JSONArray arr = new JSONArray();
            for (Usuario user : list) {
                JSONObject o = new JSONObject();
                o.put("nome", user.getNome());
                o.put("sobrenome", user.getSobrenome());
                o.put("telefone", user.getTelefone());
                o.put("cpf", user.getCpf());
                o.put("email", user.getEmail());
                o.put("senha", user.getSenha());
                arr.put(user.getNome());
                arr.put(user.getSobrenome());
                arr.put(user.getTelefone());
                arr.put(user.getCpf());
                arr.put(user.getEmail());
                arr.put(user.getSenha());
            }
            file.put("list", arr);
            response.getWriter().print(file.toString());

        } catch (Exception ex) {
            response.setStatus(500);
            file.put("error", ex.getLocalizedMessage());
        }
        response.getWriter().print(file.toString());
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json;charset=UTF-8");
        JSONObject file = new JSONObject();

        try {
            JSONObject body = getJSONBody(request.getReader());
            String nome = body.getString("nome");
            String sobrenome = body.getString("sobrenome");
            String telefone = body.getString("telefone");
            String cpf = body.getString("cpf");
            String email = body.getString("email");
            String senha = body.getString("senha"); // Lembre-se de tratar a segurança da senha!

            if (nome != null && email != null && senha != null && cpf != null && sobrenome != null && telefone != null) {
                Usuario.addUsuario(nome);
                Usuario.addUsuario(email);
                Usuario.addUsuario(senha);
                Usuario.addUsuario(cpf);
                Usuario.addUsuario(sobrenome);
                Usuario.addUsuario(telefone);

            }

            ArrayList<Usuario> list = Usuario.getList();
            JSONArray arr = new JSONArray();
            for (Usuario user : list) {
                JSONObject o = new JSONObject();
                o.put("nome", user.getNome());
                o.put("sobrenome", user.getSobrenome());
                o.put("telefone", user.getTelefone());
                o.put("cpf", user.getCpf());
                o.put("email", user.getEmail());
                o.put("senha", user.getSenha());
                arr.put(user.getNome());
                arr.put(user.getSobrenome());
                arr.put(user.getTelefone());
                arr.put(user.getCpf());
                arr.put(user.getEmail());
                arr.put(user.getSenha());
            }
            file.put("list", arr);

            JSONArray jsonUsuarios = new JSONArray();
            for (Usuario usuario : Usuario.list) {
                JSONObject jsonUsuario = new JSONObject();
                jsonUsuario.put("nome", usuario.getNome());
                jsonUsuario.put("sobrenome", usuario.getSobrenome());
                jsonUsuario.put("telefone", usuario.getTelefone());
                jsonUsuario.put("cpf", usuario.getCpf());
                jsonUsuario.put("email", usuario.getEmail());
                jsonUsuarios.put(jsonUsuario);
            }
            file.put("list", jsonUsuarios);
            response.getWriter().print(file.toString());

        } catch (Exception ex) {
            response.setStatus(500);
            file.put("error", ex.getLocalizedMessage());
            response.getWriter().print(file.toString());
        }
    }

    /**
     * Handles the HTTP <code>DELETE</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JSONObject file = new JSONObject();

        try {
            String nome = request.getParameter("nome");
            String sobrenome = request.getParameter("sobrenome");
            String telefone = request.getParameter("telefone");
            String cpf = request.getParameter("cpf");
            String email = request.getParameter("email");
            String senha = request.getParameter("senha"); // Lembre-se de tratar a segurança da senha!
            Usuario.removeUsuario(nome);
            Usuario.removeUsuario(sobrenome);
            Usuario.removeUsuario(telefone);
            Usuario.removeUsuario(cpf);
            Usuario.removeUsuario(email);
            Usuario.removeUsuario(senha);
            ArrayList<Usuario> list = Usuario.getList();
            JSONArray arr = new JSONArray();
            for (Usuario user : list) {
                JSONObject o = new JSONObject();
                o.put("nome", user.getNome());
                o.put("sobrenome", user.getSobrenome());
                o.put("telefone", user.getTelefone());
                o.put("cpf", user.getCpf());
                o.put("email", user.getEmail());
                o.put("senha", user.getSenha());
                arr.put(user.getNome());
                arr.put(user.getSobrenome());
                arr.put(user.getTelefone());
                arr.put(user.getCpf());
                arr.put(user.getEmail());
                arr.put(user.getSenha());
            }
            file.put("list", arr);
            
            response.getWriter().print(file.toString());

            file.put("list", new JSONArray(Usuario.list));
        } catch (Exception ex) {
            response.setStatus(500);
            file.put("error", ex.getLocalizedMessage());
            response.getWriter().print(file.toString());

        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
