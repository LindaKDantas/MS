/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.memorias.Models;

import com.mycompany.memorias.Hibernate.HibernateFactory;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import static javax.persistence.CascadeType.ALL;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Query;
import javax.persistence.Table;
import javax.persistence.Temporal;
import org.hibernate.Session;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

/**
 *
 * @author Chico
 */
@Entity
@Table(name = "usuario")
public class Usuario implements Serializable {

    @Id
    private String email;
    @Column(unique = true)
    private String nome;

    @Temporal(javax.persistence.TemporalType.DATE)
    private Date dataNasc;

    private String nacionalidade;

    private String senha;
    
    private String descricao;
    
    @LazyCollection(LazyCollectionOption.FALSE)
    @OneToMany(cascade = ALL, mappedBy = "autor")
    private List<Memorias> memoriasCriadas;
    
    public Usuario() {
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
    public List<Memorias> getMemoriasCriadas() {
        return memoriasCriadas;
    }

    public void setMemoriasCriadas(List<Memorias> memoriasCriadas) {
        this.memoriasCriadas = memoriasCriadas;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Date getDataNasc() {
        return dataNasc;
    }

    public void setDataNasc(Date dataNasc) {
        this.dataNasc = dataNasc;
    }

    public String getNacionalidade() {
        return nacionalidade;
    }

    public void setNacionalidade(String nacionalidade) {
        this.nacionalidade = nacionalidade;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;

    }

    public Usuario login(String email, String senha) {
        Session s = HibernateFactory.getSessionFactory().openSession();
        try {
            s.beginTransaction();
            Query query = s.createQuery("from Usuario u where u.email = :email and u.senha = :senha");
            query.setParameter("email", email);
            query.setParameter("senha", senha);
            Usuario u = (Usuario) query.getSingleResult();
            s.getTransaction().commit();
            return u;
        } catch (Exception ex) {
            s.getTransaction().rollback();
            return null;
        } finally {
            s.close();
        }
    }

}
