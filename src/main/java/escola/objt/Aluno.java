package escola.objt;

import java.sql.Date;

public class Aluno {
	private int id;
	private String nome;
	private String email;
	private String telefone;
	private Date dataNasc;
	private char sexo;
	
	public Aluno(int id, String nome, String email, String telefone, Date dataNasc, char sexo) {
		this.id = id;
		this.nome = nome;
		this.email = email;
		this.telefone = telefone;
		this.dataNasc = dataNasc;
		this.sexo = sexo;
	}
	
	public Aluno(String nome, String email, String telefone, Date dataNasc, char sexo) {
		this.nome = nome;
		this.email = email;
		this.telefone = telefone;
		this.dataNasc = dataNasc;
		this.sexo = sexo;
	}

	public Aluno() {
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public Date getDataNasc() {
		return dataNasc;
	}
	public void setDataNasc(Date dataNasc) {
		this.dataNasc = dataNasc;
	}
	public char getSexo() {
		return sexo;
	}
	public void setSexo(char sexo) {
		this.sexo = sexo;
	}

	@Override
	public String toString() {
		return "[id=" + id + ", nome=" + nome + ", email=" + email + ", telefone=" + telefone + ", dataNasc="
				+ dataNasc + ", sexo=" + sexo + "]";
	}
}
