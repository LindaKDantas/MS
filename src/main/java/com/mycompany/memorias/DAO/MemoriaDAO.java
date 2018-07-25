/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.memorias.DAO;

import com.mycompany.memorias.Hibernate.HibernateFactory;
import com.mycompany.memorias.Hibernate.HibernateUtil;
import com.mycompany.memorias.Models.Memorias;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.HibernateException;
import org.hibernate.Session;

/**
 *
 * @author user
 */
public class MemoriaDAO {

    static Session s;    
    HibernateUtil<Memorias> hue;

    public MemoriaDAO() {
        HibernateFactory.initSessionFactory();
        hue = new HibernateUtil<>();
    }

    public static List<Memorias> listarPorID(String id) {
        List<Memorias> memorias = null;
        s = HibernateFactory.getSessionFactory().openSession();
        try {
            s.beginTransaction();
            Query query = s.createQuery("from Memorias as m where m.autor.email =:id");
            query.setParameter("id", id);
            memorias = query.getResultList();
            s.getTransaction().commit();
            return memorias;
        } catch (HibernateException e) {
            s.getTransaction().rollback();
        } finally {
            s.close();
        }
        return memorias;
    }
    /*public String salvar(Usuario usuario){
        s = HibernateFactory.getSessionFactory().openSession();
        
        try{
            s.beginTransaction();
            
        }
    }*/
    
    public String atualizar(Memorias memoria){
        s = HibernateFactory.getSessionFactory().openSession();
        return hue.atualizar(memoria);
    }
    
    public static List<Memorias> pesquisarPorNome(String pesquisa) {
        List<Memorias> memorias = null;
        s = HibernateFactory.getSessionFactory().openSession();
        try {
            s.beginTransaction();
            Query query = s.createQuery("from Memorias as m where m.nome like :pesquisa");
            query.setParameter("pesquisa", "%" + pesquisa + "%");
            memorias = query.getResultList();
            s.getTransaction().commit();
            return memorias;
        } catch (HibernateException e) {
            s.getTransaction().rollback();
        } finally {
            s.close();
        }
        return memorias;
    }
}
