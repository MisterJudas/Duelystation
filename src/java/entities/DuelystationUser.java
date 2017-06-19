/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Eduardo-Amilcar
 */
@Entity
@Table(name = "duelystation_user")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DuelystationUser.findAll", query = "SELECT d FROM DuelystationUser d")
    , @NamedQuery(name = "DuelystationUser.findByDuEmail", query = "SELECT d FROM DuelystationUser d WHERE d.duEmail = :duEmail")
    , @NamedQuery(name = "DuelystationUser.findByDuUsername", query = "SELECT d FROM DuelystationUser d WHERE d.duUsername = :duUsername")
    , @NamedQuery(name = "DuelystationUser.findByDuRealname", query = "SELECT d FROM DuelystationUser d WHERE d.duRealname = :duRealname")
    , @NamedQuery(name = "DuelystationUser.findByDuRealsurname", query = "SELECT d FROM DuelystationUser d WHERE d.duRealsurname = :duRealsurname")
    , @NamedQuery(name = "DuelystationUser.findByDuPassword", query = "SELECT d FROM DuelystationUser d WHERE d.duPassword = :duPassword")
    })
public class DuelystationUser implements Serializable {

    private static final long serialVersionUID = 1L;
    @Size(max = 255)
    @Column(name = "du_email")
    private String duEmail;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "du_username")
    private String duUsername;
    @Size(max = 255)
    @Column(name = "du_realname")
    private String duRealname;
    @Size(max = 255)
    @Column(name = "du_realsurname")
    private String duRealsurname;
    @Size(max = 255)
    @Column(name = "du_password")
    private String duPassword;
   
    @OneToMany(mappedBy = "dccUsername")
    private Collection<DuelystCardsComments> duelystCardsCommentsCollection;
   
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cdcUsername")
    private Collection<CardDeckComments> cardDeckCommentsCollection;

    public DuelystationUser() {
    }

    public DuelystationUser(String duUsername) {
        this.duUsername = duUsername;
    }
    

    public DuelystationUser(String duEmail, String duUsername, String duRealname, String duRealsurname, String duPassword) {
        this.duEmail = duEmail;
        this.duUsername = duUsername;
        this.duRealname = duRealname;
        this.duRealsurname = duRealsurname;
        this.duPassword = duPassword;
    }

   
    public String getDuEmail() {
        return duEmail;
    }

    public void setDuEmail(String duEmail) {
        this.duEmail = duEmail;
    }

    public String getDuUsername() {
        return duUsername;
    }

    public void setDuUsername(String duUsername) {
        this.duUsername = duUsername;
    }

    public String getDuRealname() {
        return duRealname;
    }

    public void setDuRealname(String duRealname) {
        this.duRealname = duRealname;
    }

    public String getDuRealsurname() {
        return duRealsurname;
    }

    public void setDuRealsurname(String duRealsurname) {
        this.duRealsurname = duRealsurname;
    }

    public String getDuPassword() {
        return duPassword;
    }

    public void setDuPassword(String duPassword) {
        this.duPassword = duPassword;
    }



    @XmlTransient
    public Collection<DuelystCardsComments> getDuelystCardsCommentsCollection() {
        return duelystCardsCommentsCollection;
    }

    public void setDuelystCardsCommentsCollection(Collection<DuelystCardsComments> duelystCardsCommentsCollection) {
        this.duelystCardsCommentsCollection = duelystCardsCommentsCollection;
    }


    @XmlTransient
    public Collection<CardDeckComments> getCardDeckCommentsCollection() {
        return cardDeckCommentsCollection;
    }

    public void setCardDeckCommentsCollection(Collection<CardDeckComments> cardDeckCommentsCollection) {
        this.cardDeckCommentsCollection = cardDeckCommentsCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (duUsername != null ? duUsername.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DuelystationUser)) {
            return false;
        }
        DuelystationUser other = (DuelystationUser) object;
        if ((this.duUsername == null && other.duUsername != null) || (this.duUsername != null && !this.duUsername.equals(other.duUsername))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.DuelystationUser[ duUsername=" + duUsername + " ]";
    }
    
}
