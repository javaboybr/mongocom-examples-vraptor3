package collections;

import com.arquivolivre.mongocom.annotations.Document;
import com.arquivolivre.mongocom.annotations.GeneratedValue;
import com.arquivolivre.mongocom.annotations.ObjectId;
import com.arquivolivre.mongocom.utils.IntegerGenerator;

@Document
public class Newsletter {

    @ObjectId
    private String id;
    @GeneratedValue(generator = IntegerGenerator.class)
    private int idIncremental;
    private String nome;
    private String email;

    public String getId() {
        return id;
    }

    public int getIdIncremental() {
        return idIncremental;
    }

    public void setIdIncremental(int idIncremental) {
        this.idIncremental = idIncremental;
    }

    public void setId(String id) {
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

}
