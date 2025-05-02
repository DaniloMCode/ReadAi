
package Usuario;

import java.util.ArrayList;



public class User {
    public static ArrayList<User> list = new ArrayList<>();
    
    private String nome;
    private String email;
    private String senha;
    private String dataAniversario; // Ou LocalDate se estiver usando Java 8+

    // Construtor que recebe todos os atributos
    public User(String nome, String email, String senha, String dataAniversario) {
        this.nome = nome;
        this.email = email;
        this.senha = senha;
        this.dataAniversario = dataAniversario;
    }

    // Getters
    public String getNome() {
        return nome;
    }

    public String getEmail() {
        return email;
    }

    public String getSenha() {
        return senha;
    }

    public String getDataAniversario() {
        return dataAniversario;
    }

    // Setters (opcionais - se você quiser permitir modificação depois)
    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public void setDataAniversario(String dataAniversario) {
        this.dataAniversario = dataAniversario;
    }
}
