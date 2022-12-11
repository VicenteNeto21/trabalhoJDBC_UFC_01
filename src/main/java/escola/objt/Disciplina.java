package escola.objt;

public class Disciplina {
	private int codigo;
	private int creditos;
	private String nome;
	
	public Disciplina() {
	}
	public Disciplina(int codigo, int creditos, String nome) {
		this.codigo = codigo;
		this.creditos = creditos;
		this.nome = nome;
	}
	public Disciplina(int creditos, String nome) {
		this.creditos = creditos;
		this.nome = nome;
	}
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public int getCredito() {
		return creditos;
	}
	public void setCredito(int creditos) {
		this.creditos = creditos;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	@Override
	public String toString() {
		return "[codigo=" + codigo + ", nome=" + nome + ", creditos=" + creditos + "]";
	}
}
