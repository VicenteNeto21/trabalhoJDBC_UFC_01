package escola.objt;

public class AlunoDisciplina {
	private int aluno_matr;
	private int disciplina_cod;
	private float periodo;
	private float nota;
	private int frequencia;
		
	public AlunoDisciplina(int aluno_matr, int disciplina_cod, float periodo, float nota, int frequencia) {
		this.aluno_matr = aluno_matr;
		this.disciplina_cod = disciplina_cod;
		this.periodo = periodo;
		this.nota = nota;
		this.frequencia = frequencia;
	}

	public AlunoDisciplina() {
	}
	
	public int getAluno_matr() {
		return aluno_matr;
	}
	public void setAluno_matr(int aluno_matr) {
		this.aluno_matr = aluno_matr;
	}
	public int getDisciplina_cod() {
		return disciplina_cod;
	}
	public void setDisciplina_cod(int disciplina_cod) {
		this.disciplina_cod = disciplina_cod;
	}
	public float getPeriodo() {
		return periodo;
	}
	public void setPeriodo(float periodo) {
		this.periodo = periodo;
	}
	public float getNota() {
		return nota;
	}
	public void setNota(float nota) {
		this.nota = nota;
	}
	public int getFrequencia() {
		return frequencia;
	}
	public void setFrequencia(int frequencia) {
		this.frequencia = frequencia;
	}
	@Override
	public String toString() {
		return "[aluno_matr=" + aluno_matr + ", disciplina_cod=" + disciplina_cod + ", periodo="
				+ periodo + ", nota=" + nota + ", frequencia=" + frequencia + "]";
	}

	
}
