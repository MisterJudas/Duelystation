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
@Table(name = "duelyst_set")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DuelystSet.findAll", query = "SELECT d FROM DuelystSet d")
    , @NamedQuery(name = "DuelystSet.findByDsId", query = "SELECT d FROM DuelystSet d WHERE d.dsId = :dsId")
    , @NamedQuery(name = "DuelystSet.findByDsName", query = "SELECT d FROM DuelystSet d WHERE d.dsName = :dsName")
    , @NamedQuery(name = "DuelystSet.findByDsreleaseDate", query = "SELECT d FROM DuelystSet d WHERE d.dsreleaseDate = :dsreleaseDate")})
public class DuelystSet implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "ds_id")
    private Integer dsId;
    @Size(max = 255)
    @Column(name = "ds_name")
    private String dsName;
    @Column(name = "ds_releaseDate")
    @Temporal(TemporalType.DATE)
    private Date dsreleaseDate;
    @JoinColumn(name = "ds_cardNumber", referencedColumnName = "dc_id")
    @ManyToOne
    private DuelystCards dscardNumber;

    public DuelystSet() {
    }

    public DuelystSet(Integer dsId) {
        this.dsId = dsId;
    }

    public Integer getDsId() {
        return dsId;
    }

    public void setDsId(Integer dsId) {
        this.dsId = dsId;
    }

    public String getDsName() {
        return dsName;
    }

    public void setDsName(String dsName) {
        this.dsName = dsName;
    }

    public Date getDsreleaseDate() {
        return dsreleaseDate;
    }

    public void setDsreleaseDate(Date dsreleaseDate) {
        this.dsreleaseDate = dsreleaseDate;
    }

    public DuelystCards getDscardNumber() {
        return dscardNumber;
    }

    public void setDscardNumber(DuelystCards dscardNumber) {
        this.dscardNumber = dscardNumber;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (dsId != null ? dsId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DuelystSet)) {
            return false;
        }
        DuelystSet other = (DuelystSet) object;
        if ((this.dsId == null && other.dsId != null) || (this.dsId != null && !this.dsId.equals(other.dsId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.DuelystSet[ dsId=" + dsId + " ]";
    }
    
}
