package resources;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import java.util.List;

import com.arquivolivre.mongocom.management.CollectionManager;
import com.arquivolivre.mongocom.management.CollectionManagerFactory;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import collections.Newsletter;
import java.util.logging.Level;
import java.util.logging.Logger;

@Resource
@Path("/newsletter")
public class NewsletterController {

    private final Result result;
    private final CollectionManager cm;

    public NewsletterController(Result result) {
        this.result = result;
        //tenta se conectar no localhost porta padrao usando a base admin
        //cm = CollectionManagerFactory.createCollectionManager();
        //tenta criar uma conexao com as informaçoes de arquivos de configuracao
        //na pasta conf, aceita os arquivos application.conf, database.conf, database.properties, database.config
        //se essa conexao ja tenha sido feita em algum momento na vm, ele recupera a instancia da mesma.
        cm = CollectionManagerFactory.setup();
    }

    public void index() {
    }

    public List<Newsletter> lista() {
        List<Newsletter> l = cm.find(Newsletter.class);
        Logger.getLogger(this.getClass().getName()).log(Level.INFO, "records in list: {0}", l.size());
        return l;
    }

    public void adiciona(Newsletter newsletter) {
        cm.insert(newsletter);
    }

    @Get("remove/{id}")
    public void remove(String id) {
        Newsletter n = cm.findById(Newsletter.class, id);
        cm.remove(n);
        result.redirectTo(this).lista();
    }

    public void salva(Newsletter newsletter) {
        cm.save(newsletter);
        result.redirectTo(this).lista();
    }

    @Get("altera/{id}")
    public Newsletter altera(String id) {
        return cm.findById(Newsletter.class, id);
    }

}
