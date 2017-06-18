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
@Table(name = "duelyst_cards_comments")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DuelystCardsComments.findAll", query = "SELECT d FROM DuelystCardsComments d")
    , @NamedQuery(name = "DuelystCardsComments.findByDccId", query = "SELECT d FROM DuelystCardsComments d WHERE d.dccId = :dccId")
    , @NamedQuery(name = "DuelystCardsComments.findByDccDate", query = "SELECT d FROM DuelystCardsComments d WHERE d.dccDate = :dccDate")})
public class DuelystCardsComments implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "dcc_id")
    private Integer dccId;
    @Lob
    @Size(max = 65535)
    @Column(name = "dcc_description")
    private String dccDescription;
    @Column(name = "dcc_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dccDate;
    @JoinColumn(name = "dcc_username", referencedColumnName = "du_username")
    @ManyToOne
    private DuelystationUser dccUsername;
    @JoinColumn(name = "dcc_card_id", referencedColumnName = "dc_id")
    @ManyToOne
    private DuelystCards dccCardId;

    public DuelystCardsComments() {
    }

    public DuelystCardsComments(Integer dccId) {
        this.dccId = dccId;
    }

    public Integer getDccId() {
        return dccId;
    }

    public void setDccId(Integer dccId) {
        this.dccId = dccId;
    }

    public String getDccDescription() {
        return dccDescription;
    }

    public void setDccDescription(String dccDescription) {
        this.dccDescription = dccDescription;
    }

    public Date getDccDate() {
        return dccDate;
    }

    public void setDccDate(Date dccDate) {
        this.dccDate = dccDate;
    }

    public DuelystationUser getDccUsername() {
        return dccUsername;
    }

    public void setDccUsername(DuelystationUser dccUsername) {
        this.dccUsername = dccUsername;
    }

    public DuelystCards getDccCardId() {
        return dccCardId;
    }

    public void setDccCardId(DuelystCards dccCardId) {
        this.dccCardId = dccCardId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (dccId != null ? dccId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DuelystCardsComments)) {
            return false;
        }
        DuelystCardsComments other = (DuelystCardsComments) object;
        if ((this.dccId == null && other.dccId != null) || (this.dccId != null && !this.dccId.equals(other.dccId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.DuelystCardsComments[ dccId=" + dccId + " ]";
    }
    
}
