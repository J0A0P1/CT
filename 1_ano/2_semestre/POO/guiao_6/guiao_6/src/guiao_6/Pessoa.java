package guiao_6;
import java.time.LocalDate;

public class Pessoa {
    private String nome;
    private int cc;
    private DateYMD dataNasc;
    
    public Pessoa(String nome, int cc, DateYMD dataNasc) {
        this.nome = nome;
        this.cc = cc;
        this.dataNasc = dataNasc;
    }

    public String getNome() {
        return nome;
    }

    public int getCc() {
        return cc;
    }

    public DateYMD getDataNasc() {
        return dataNasc;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setCc(int cc) {
        this.cc = cc;
    }

    public void setDataNasc(DateYMD dataNasc) {
        this.dataNasc = dataNasc;
    }

    public static void main(String[] args) {
        DateYMD data = new DateYMD(25, 3, 2004);
        Pessoa p = new Pessoa("João", 1920394832, data);
        System.out.println(p.getNome());
        System.out.println(p.getCc());
        System.out.println(p.getDataNasc().getDay());
        System.out.println(p.getDataNasc().getMonth());
        System.out.println(p.getDataNasc().getYear());
    }

    String getName(){
        return this.nome;
    }

    public class Aluno extends Pessoa {
        // Definição de atributos
        private int nMec;
        private DateYMD dataInsc;
        private static int nAlunos = 0;
    
        // Construtores
        public Aluno(String iNome, int iBI, DateYMD iDataNasc, DateYMD iDataInsc) {
            super(iNome, iBI, iDataNasc);
            this.dataInsc = iDataInsc;
            this.nMec = ++nAlunos;
        }
    
        public Aluno(String iNome, int iBI, DateYMD iDataNasc) {
            this(iNome, iBI, iDataNasc, new Date());
        }
    
        public Aluno(String iNome, int iBI) {
            this(iNome, iBI, new Date());
        }
    
        public Aluno(String iNome) {
            this(iNome, 0);
        }
    
        public int getNMec() {
            return nMec;
        }
    }

    public class Professor extends Pessoa {
        ...
    }

    public class Bolseiro extends Aluno {
        ...
    }

    
}
