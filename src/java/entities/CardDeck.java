/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Eduardo-Amilcar
 */
@Entity
@Table(name = "card_deck")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CardDeck.findAll", query = "SELECT c FROM CardDeck c")
    , @NamedQuery(name = "CardDeck.findByCdId", query = "SELECT c FROM CardDeck c WHERE c.cdId = :cdId")
    , @NamedQuery(name = "CardDeck.findByCdName", query = "SELECT c FROM CardDeck c WHERE c.cdName = :cdName")
    , @NamedQuery(name = "CardDeck.findByCdDescriptionDeck", query = "SELECT c FROM CardDeck c WHERE c.cdDescriptionDeck = :cdDescriptionDeck")
    , @NamedQuery(name = "CardDeck.findByCdDate", query = "SELECT c FROM CardDeck c WHERE c.cdDate = :cdDate")
    , @NamedQuery(name = "CardDeck.findByCdLikes", query = "SELECT c FROM CardDeck c WHERE c.cdLikes = :cdLikes")
    , @NamedQuery(name = "CardDeck.findByCdDislikes", query = "SELECT c FROM CardDeck c WHERE c.cdDislikes = :cdDislikes")})
public class CardDeck implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "cd_id")
    private Integer cdId;
    @Size(max = 255)
    @Column(name = "cd_name")
    private String cdName;
    @Size(max = 255)
    @Column(name = "cd_description_deck")
    private String cdDescriptionDeck;
    @Column(name = "cd_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date cdDate;
    @Column(name = "cd_likes")
    private Integer cdLikes;
    @Column(name = "cd_dislikes")
    private Integer cdDislikes;
    @JoinColumn(name = "cd_idcards", referencedColumnName = "dc_id")
    @ManyToOne
    private DuelystCards cdIdcards;
    @JoinColumn(name = "cd_author", referencedColumnName = "du_username")
    @ManyToOne
    private DuelystationUser cdAuthor;
    @OneToMany(mappedBy = "cdcDeckId")
    private Collection<CardDeckComments> cardDeckCommentsCollection;

    public CardDeck() {
    }

    public CardDeck(Integer cdId, String cdName, String cdDescriptionDeck) {
        this.cdId = cdId;
        this.cdName = cdName;
        this.cdDescriptionDeck = cdDescriptionDeck;
       
    } 

    public CardDeck(Integer cdId) {
        this.cdId = cdId;
    }

    public Integer getCdId() {
        return cdId;
    }

    public void setCdId(Integer cdId) {
        this.cdId = cdId;
    }

    public String getCdName() {
        return cdName;
    }

    public void setCdName(String cdName) {
        this.cdName = cdName;
    }

    public String getCdDescriptionDeck() {
        return cdDescriptionDeck;
    }

    public void setCdDescriptionDeck(String cdDescriptionDeck) {
        this.cdDescriptionDeck = cdDescriptionDeck;
    }

    public Date getCdDate() {
        return cdDate;
    }

    public void setCdDate(Date cdDate) {
        this.cdDate = cdDate;
    }

    public Integer getCdLikes() {
        return cdLikes;
    }

    public void setCdLikes(Integer cdLikes) {
        this.cdLikes = cdLikes;
    }

    public Integer getCdDislikes() {
        return cdDislikes;
    }

    public void setCdDislikes(Integer cdDislikes) {
        this.cdDislikes = cdDislikes;
    }

    public DuelystCards getCdIdcards() {
        return cdIdcards;
    }

    public void setCdIdcards(DuelystCards cdIdcards) {
        this.cdIdcards = cdIdcards;
    }

    public DuelystationUser getCdAuthor() {
        return cdAuthor;
    }

    public void setCdAuthor(DuelystationUser cdAuthor) {
        this.cdAuthor = cdAuthor;
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
        hash += (cdId != null ? cdId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CardDeck)) {
            return false;
        }
        CardDeck other = (CardDeck) object;
        if ((this.cdId == null && other.cdId != null) || (this.cdId != null && !this.cdId.equals(other.cdId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.CardDeck[ cdId=" + cdId + " ]";
    }
    
}
