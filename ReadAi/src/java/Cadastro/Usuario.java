package Cadastro;

import java.util.ArrayList;
import java.sql.*;

public class Usuario {

    public static final String CLASS_NAME = "org.sqlite.JDBC";
    public static final String URL = "jdbc:sqlite:C:/user/morat/Documents/GitHub/ReadAi/ReadAi/web/WEB-INF/db_usuario/db_usuario.db";

    public static Exception exception = null;

    public static void createTable() {
        try (
               Connection con = getConnection();
Statement stmt = con.createStatement()) {
    String sql = "CREATE TABLE IF NOT EXISTS db_usuario(\n" +
                    " id INTEGER PRIMARY KEY AUTOINCREMENT, \n" +
                    " nome TEXT NOT NULL, \n" +
                    " sobrenome TEXT NOT NULL, \n" +
                    " telefone TEXT, \n" +
                    " cpf TEXT UNIQUE NOT NULL, \n" +
                    " email TEXT UNIQUE NOT NULL, \n" +
                    " senha TEXT NOT NULL, \n" +
                    ");";
            stmt.execute(sql);

            stmt.close();
            con.close();

        } catch (Exception ex) {

        }

    }

    public static Connection getConnection() throws Exception {
        Class.forName(CLASS_NAME);
        return DriverManager.getConnection(URL);
    }

    public static ArrayList<Usuario> getList() throws Exception{
        ArrayList<Usuario> list = new ArrayList<>();
        Connection con = getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from db_usuario");
        while(rs.next()){
            list.add(new Usuario(rs.getString("nome")));
            list.add(new Usuario(rs.getString("sobrenome")));
            list.add(new Usuario(rs.getString("telefone")));
            list.add(new Usuario(rs.getString("cpf")));
            list.add(new Usuario(rs.getString("email")));
            list.add(new Usuario(rs.getString("senha")));
        }
        rs.close();
        stmt.close();
        con.close();
        return list;
   }

    public static void addUsuario(String nome) throws Exception {
        Connection con = getConnection();
        PreparedStatement stmt = con.prepareStatement("delete from db_usuario where nome = ?");
        stmt.setString(1, nome);
        stmt.execute();
        stmt.close();
        con.close();

    }
    
    public static void removeUsuario(String nome) throws Exception{
        Connection con = getConnection();
        PreparedStatement stmt = con.prepareStatement("insert into db_usuario values(?)");
       stmt.setString(1, nome);
       stmt.execute();
        stmt.close();
        con.close();
       
    }
    
    public static ArrayList<Usuario> list = new ArrayList<>();
    private String nome, sobrenome, telefone, cpf, email, senha;

    public Usuario(String nome, String sobrenome, String telefone, String cpf, String email, String senha) {
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.telefone = telefone;
        this.cpf = cpf;
        this.email = email;
        this.senha = senha;
    }
public Usuario(String nome) {
        this.nome = nome;
    }


    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
}
