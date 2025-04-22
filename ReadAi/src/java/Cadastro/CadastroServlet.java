    /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Cadastro;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
/**
 *
 * @author morat
 */
@WebServlet(name = "CadastroServlet", urlPatterns = {"/cadastroServlet"})
public class CadastroServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CadastroServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CadastroServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        String dataNascimento = request.getParameter("date");

        // Caminho para o seu arquivo de banco de dados SQLite (crie a pasta 'database' em WebContent)
        String jdbcUrl = "jdbc:sqlite:C:\\Users\\morat\\Documents\\GitHub\\ReadAi\\ReadAi\\web\\usuario_db\\usuario.db";

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // Carregar o driver JDBC do SQLite
            Class.forName("org.sqlite.JDBC");

            // Estabelecer a conexão
            connection = DriverManager.getConnection(jdbcUrl);

            // Criar a tabela 'usuarios' se ela não existir
            String createTableSQL = "CREATE TABLE IF NOT EXISTS usuarios (nome TEXT NOT NULL, email TEXT NOT NULL UNIQUE, senha TEXT NOT NULL, data_nascimento TEXT)";
            preparedStatement = connection.prepareStatement(createTableSQL);
            preparedStatement.executeUpdate();
            preparedStatement.close();

            // Preparar a instrução SQL INSERT
            String sql = "INSERT INTO usuarios (nome, email, senha, data_nascimento) VALUES (?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, nome);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, senha);
            preparedStatement.setString(4, dataNascimento);

            // Executar a instrução SQL
            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
                System.out.println("Usuário cadastrado com sucesso!");
                response.sendRedirect("cadastro_sucesso.jsp"); // Redirecionar para página de sucesso
            } else {
                System.out.println("Erro ao cadastrar o usuário.");
                response.sendRedirect("cadastro_erro.jsp?erro=Erro ao inserir dados"); // Redirecionar para página de erro
            }

        } catch (ClassNotFoundException e) {
            response.sendRedirect("cadastro_erro.jsp?erro=Driver JDBC não encontrado: " + e.getMessage());
        } catch (SQLException e) {
            response.sendRedirect("cadastro_erro.jsp?erro=Erro de SQL: " + e.getMessage());
        } finally {
            // Fechar a conexão e o PreparedStatement no bloco finally
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
            }
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
