package ConexaoBD;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;



public class UsuarioDB {
    private Connection conexao;

    public UsuarioDB() {
        try {
            // Carregar o driver SQLite
            Class.forName("org.sqlite.JDBC");

            // Conexão com o banco
            String url = "jdbc:sqlite:C:/Users/morat/Documents/Github/ReadAI/ReadAI/web/db_usuario/db_usuario.db";
            conexao = DriverManager.getConnection(url);
            if (conexao != null) {
                System.out.println("Conexão estabelecida com sucesso!");
                
        } }catch (Exception e) {
        }
    }

    // Método para inserir um novo usuário
    public boolean cadastrarUsuario(String nome, String email, String senha) {
        String sql = "INSERT INTO usuarios (nome, email, senha) VALUES (?, ?, ?)";
        try (PreparedStatement stmt = conexao.prepareStatement(sql)) {
            stmt.setString(1, nome);
            stmt.setString(2, email);
            stmt.setString(3, senha);
            stmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            return false;
        }
    }

    // Método para atualizar os dados de um usuário
    public boolean atualizarUsuario(String email, String novoNome, String novaSenha) {
        String sql = "UPDATE usuarios SET nome = ?, senha = ? WHERE email = ?";
        try (PreparedStatement stmt = conexao.prepareStatement(sql)) {
            stmt.setString(1, novoNome);
            stmt.setString(2, novaSenha);
            stmt.setString(3, email);
            int linhasAfetadas = stmt.executeUpdate();
            return linhasAfetadas > 0;
        } catch (SQLException e) {
            return false;
        }
    }

    // Método para excluir um usuário
    public boolean excluirUsuario(String email) {
        String sql = "DELETE FROM usuarios WHERE email = ?";
        try (PreparedStatement stmt = conexao.prepareStatement(sql)) {
            stmt.setString(1, email);
            int linhasAfetadas = stmt.executeUpdate();
            return linhasAfetadas > 0;
        } catch (SQLException e) {
            return false;
        }
    }
    
public void fecharConexao() {
        try {
            if (conexao != null && !conexao.isClosed()) {
                conexao.close();
            }
        } catch (SQLException e) {
        }
    }
}
