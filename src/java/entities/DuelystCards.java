/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
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
@Table(name = "duelyst_cards")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DuelystCards.findAll", query = "SELECT d FROM DuelystCards d")
    , @NamedQuery(name = "DuelystCards.findByDcId", query = "SELECT d FROM DuelystCards d WHERE d.dcId = :dcId")
    , @NamedQuery(name = "DuelystCards.findByDcFaction", query = "SELECT d FROM DuelystCards d WHERE d.dcFaction = :dcFaction")
    , @NamedQuery(name = "DuelystCards.findByDcRarity", query = "SELECT d FROM DuelystCards d WHERE d.dcRarity = :dcRarity")
    , @NamedQuery(name = "DuelystCards.findByDcName", query = "SELECT d FROM DuelystCards d WHERE d.dcName = :dcName")
    , @NamedQuery(name = "DuelystCards.findByDcDescription", query = "SELECT d FROM DuelystCards d WHERE d.dcDescription = :dcDescription")
    , @NamedQuery(name = "DuelystCards.findByDcmanaCost", query = "SELECT d FROM DuelystCards d WHERE d.dcmanaCost = :dcmanaCost")
    , @NamedQuery(name = "DuelystCards.findByDcType", query = "SELECT d FROM DuelystCards d WHERE d.dcType = :dcType")
    , @NamedQuery(name = "DuelystCards.findByDcRace", query = "SELECT d FROM DuelystCards d WHERE d.dcRace = :dcRace")
    , @NamedQuery(name = "DuelystCards.findByDcAttack", query = "SELECT d FROM DuelystCards d WHERE d.dcAttack = :dcAttack")
    , @NamedQuery(name = "DuelystCards.findByDcHealth", query = "SELECT d FROM DuelystCards d WHERE d.dcHealth = :dcHealth")
    , @NamedQuery(name = "DuelystCards.findByDccardSet", query = "SELECT d FROM DuelystCards d WHERE d.dccardSet = :dccardSet")
    , @NamedQuery(name = "DuelystCards.findByDcPhoto", query = "SELECT d FROM DuelystCards d WHERE d.dcPhoto = :dcPhoto")
    , @NamedQuery(name = "DuelystCards.findByDcLikes", query = "SELECT d FROM DuelystCards d WHERE d.dcLikes = :dcLikes")
    , @NamedQuery(name = "DuelystCards.findByDcDislikes", query = "SELECT d FROM DuelystCards d WHERE d.dcDislikes = :dcDislikes")})
public class DuelystCards implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "dc_id")
    private Integer dcId;
    @Size(max = 255)
    @Column(name = "dc_faction")
    private String dcFaction;
    @Size(max = 255)
    @Column(name = "dc_rarity")
    private String dcRarity;
    @Size(max = 255)
    @Column(name = "dc_name")
    private String dcName;
    @Size(max = 255)
    @Column(name = "dc_description")
    private String dcDescription;
    @Column(name = "dc_manaCost")
    private Integer dcmanaCost;
    @Size(max = 255)
    @Column(name = "dc_type")
    private String dcType;
    @Size(max = 255)
    @Column(name = "dc_race")
    private String dcRace;
    @Column(name = "dc_attack")
    private Integer dcAttack;
    @Column(name = "dc_health")
    private Integer dcHealth;
    @Column(name = "dc_cardSet")
    private Integer dccardSet;
    @Size(max = 255)
    @Column(name = "dc_photo")
    private String dcPhoto;
    @Column(name = "dc_likes")
    private Integer dcLikes;
    @Column(name = "dc_dislikes")
    private Integer dcDislikes;
    @OneToMany(mappedBy = "dscardNumber")
    private Collection<DuelystSet> duelystSetCollection;
    @OneToMany(mappedBy = "dccCardId")
    private Collection<DuelystCardsComments> duelystCardsCommentsCollection;
    @OneToMany(mappedBy = "cdIdcards")
    private Collection<CardDeck> cardDeckCollection;

    public DuelystCards() {
    }

    public DuelystCards(Integer dcId) {
        this.dcId = dcId;
    }

    public Integer getDcId() {
        return dcId;
    }

    public void setDcId(Integer dcId) {
        this.dcId = dcId;
    }

    public String getDcFaction() {
        return dcFaction;
    }

    public void setDcFaction(String dcFaction) {
        this.dcFaction = dcFaction;
    }

    public String getDcRarity() {
        return dcRarity;
    }

    public void setDcRarity(String dcRarity) {
        this.dcRarity = dcRarity;
    }

    public String getDcName() {
        return dcName;
    }

    public void setDcName(String dcName) {
        this.dcName = dcName;
    }

    public String getDcDescription() {
        return dcDescription;
    }

    public void setDcDescription(String dcDescription) {
        this.dcDescription = dcDescription;
    }

    public Integer getDcmanaCost() {
        return dcmanaCost;
    }

    public void setDcmanaCost(Integer dcmanaCost) {
        this.dcmanaCost = dcmanaCost;
    }

    public String getDcType() {
        return dcType;
    }

    public void setDcType(String dcType) {
        this.dcType = dcType;
    }

    public String getDcRace() {
        return dcRace;
    }

    public void setDcRace(String dcRace) {
        this.dcRace = dcRace;
    }

    public Integer getDcAttack() {
        return dcAttack;
    }

    public void setDcAttack(Integer dcAttack) {
        this.dcAttack = dcAttack;
    }

    public Integer getDcHealth() {
        return dcHealth;
    }

    public void setDcHealth(Integer dcHealth) {
        this.dcHealth = dcHealth;
    }

    public Integer getDccardSet() {
        return dccardSet;
    }

    public void setDccardSet(Integer dccardSet) {
        this.dccardSet = dccardSet;
    }

    public String getDcPhoto() {
        return dcPhoto;
    }

    public void setDcPhoto(String dcPhoto) {
        this.dcPhoto = dcPhoto;
    }

    public Integer getDcLikes() {
        return dcLikes;
    }

    public void setDcLikes(Integer dcLikes) {
        this.dcLikes = dcLikes;
    }

    public Integer getDcDislikes() {
        return dcDislikes;
    }

    public void setDcDislikes(Integer dcDislikes) {
        this.dcDislikes = dcDislikes;
    }

    @XmlTransient
    public Collection<DuelystSet> getDuelystSetCollection() {
        return duelystSetCollection;
    }

    public void setDuelystSetCollection(Collection<DuelystSet> duelystSetCollection) {
        this.duelystSetCollection = duelystSetCollection;
    }

    @XmlTransient
    public Collection<DuelystCardsComments> getDuelystCardsCommentsCollection() {
        return duelystCardsCommentsCollection;
    }

    public void setDuelystCardsCommentsCollection(Collection<DuelystCardsComments> duelystCardsCommentsCollection) {
        this.duelystCardsCommentsCollection = duelystCardsCommentsCollection;
    }

    @XmlTransient
    public Collection<CardDeck> getCardDeckCollection() {
        return cardDeckCollection;
    }

    public void setCardDeckCollection(Collection<CardDeck> cardDeckCollection) {
        this.cardDeckCollection = cardDeckCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (dcId != null ? dcId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DuelystCards)) {
            return false;
        }
        DuelystCards other = (DuelystCards) object;
        if ((this.dcId == null && other.dcId != null) || (this.dcId != null && !this.dcId.equals(other.dcId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.DuelystCards[ dcId=" + dcId + " ]";
    }
    
}
