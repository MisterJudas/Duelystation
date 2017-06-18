/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Eduardo-Amilcar
 */
@Entity
@Table(name = "card_deck_comments")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CardDeckComments.findAll", query = "SELECT c FROM CardDeckComments c")
    , @NamedQuery(name = "CardDeckComments.findByCdcId", query = "SELECT c FROM CardDeckComments c WHERE c.cdcId = :cdcId")
    , @NamedQuery(name = "CardDeckComments.findByCdcDate", query = "SELECT c FROM CardDeckComments c WHERE c.cdcDate = :cdcDate")})
public class CardDeckComments implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "cdc_id")
    private Integer cdcId;
    @Lob
    @Size(max = 65535)
    @Column(name = "cdc_description")
    private String cdcDescription;
    @Column(name = "cdc_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date cdcDate;
    @JoinColumn(name = "cdc_username", referencedColumnName = "du_username")
    @ManyToOne(optional = false)
    private DuelystationUser cdcUsername;
    @JoinColumn(name = "cdc_deck_id", referencedColumnName = "cd_id")
    @ManyToOne
    private CardDeck cdcDeckId;

    public CardDeckComments() {
    }

    public CardDeckComments(Integer cdcId) {
        this.cdcId = cdcId;
    }

    public Integer getCdcId() {
        return cdcId;
    }

    public void setCdcId(Integer cdcId) {
        this.cdcId = cdcId;
    }

    public String getCdcDescription() {
        return cdcDescription;
    }

    public void setCdcDescription(String cdcDescription) {
        this.cdcDescription = cdcDescription;
    }

    public Date getCdcDate() {
        return cdcDate;
    }

    public void setCdcDate(Date cdcDate) {
        this.cdcDate = cdcDate;
    }

    public DuelystationUser getCdcUsername() {
        return cdcUsername;
    }

    public void setCdcUsername(DuelystationUser cdcUsername) {
        this.cdcUsername = cdcUsername;
    }

    public CardDeck getCdcDeckId() {
        return cdcDeckId;
    }

    public void setCdcDeckId(CardDeck cdcDeckId) {
        this.cdcDeckId = cdcDeckId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cdcId != null ? cdcId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CardDeckComments)) {
            return false;
        }
        CardDeckComments other = (CardDeckComments) object;
        if ((this.cdcId == null && other.cdcId != null) || (this.cdcId != null && !this.cdcId.equals(other.cdcId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.CardDeckComments[ cdcId=" + cdcId + " ]";
    }
    
}
