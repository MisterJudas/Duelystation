/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import entities.CardDeck;
import entities.DuelystCards;
import entities.DuelystationUser;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;

/**
 *
 * @author Eduardo-Amilcar
 */
@Stateless
public class DuelystationEJB {

    @PersistenceUnit
    EntityManagerFactory emf;

    public boolean loginUser(String du_username, String du_password) {
        EntityManager em = emf.createEntityManager();
        DuelystationUser encontrada = em.find(DuelystationUser.class, du_username);
        if (encontrada != null) {
            if (du_password.equals(encontrada.getDuPassword())) {
                return true;
            }
        }
        em.close();
        return false;
    }

    public boolean existUser(DuelystationUser u) {
        EntityManager em = emf.createEntityManager();
        DuelystationUser encontrada = em.find(DuelystationUser.class, u.getDuUsername());
        em.close();
        return encontrada != null;
    }

    public boolean altaUser(DuelystationUser u) {
        if (!existUser(u)) {
            EntityManager em = emf.createEntityManager();
            em.persist(u);
            em.close();
            return true;
        }
        return false;
    }

    public List<DuelystationUser> selectAllUsers() {
        return emf.createEntityManager().createNamedQuery("DuelystationUser.findAll").getResultList();
    }

    public DuelystationUser selectDuelystationUserByName(String s) {
        return emf.createEntityManager().find(DuelystationUser.class, s);
    }

    public boolean insertDuelystCard(DuelystCards c) { //public boolean insertCard(DuelystCards c){
        if (!existCard(c)) {
            EntityManager em = emf.createEntityManager();
            em.persist(c);
            em.close();
            return true;
        }
        return false;
    }

      public boolean insertCardDeck(CardDeck d) {
        if (!existDeck(d)) {
            EntityManager em = emf.createEntityManager();
            em.persist(d);
            em.close();
            return true;
        }
        return false;
    }
    /*public boolean insertCardDeck(CardDeck d) {
        EntityManager em = emf.createEntityManager();
        CardDeck exist = em.find(CardDeck.class, d.getCdName());
        boolean ok = false;
        if (exist == null) {
            em.persist(d);
            ok = true;
        }
        em.close();
        return ok;
    }*/

    public boolean removeDuelystCard(DuelystCards c) {
        EntityManager em = emf.createEntityManager();
        DuelystCards aux = em.find(DuelystCards.class, c.getDcId());
        if (aux != null) {
            em.remove(aux);
            em.close();
            return true;
        }
        return false;
    }

    public boolean removeCardDeck(CardDeck d) {
        EntityManager em = emf.createEntityManager();
        CardDeck aux = em.find(CardDeck.class, d.getCdId());
        if (aux != null) {
            em.remove(aux);
            em.close();
            return true;
        }
        return false;
    }

    public boolean existCard(DuelystCards c) {
        EntityManager em = emf.createEntityManager();
        List<DuelystCards> cards = em.createNamedQuery("DuelystCards.findByDcName").setParameter("dc_name", c.getDcName()).getResultList();
        em.close();
        return !cards.isEmpty();
    }

    public boolean existDeck(CardDeck d) {
        EntityManager em = emf.createEntityManager();
        List<CardDeck> decks = em.createNamedQuery("CardDeck.findByCdName").setParameter("cd_name", d.getCdName()).getResultList();
        em.close();
        return !decks.isEmpty();
    }

    public List<CardDeck> selectAllCardDecks() {
        return emf.createEntityManager().createNamedQuery("CardDeck.findAll").getResultList();
    }

    public List<CardDeck> selectCardDeckById(Integer cd_id) {
        return emf.createEntityManager().createNamedQuery("CardDeck.findByCd_id").setParameter("cd_id", cd_id).getResultList();
    }

    //Cards Queries
    public List<DuelystCards> selectAllCards() {
        return emf.createEntityManager().createNamedQuery("DuelystCards.findAll").getResultList();
    }

    public List<DuelystCards> selectDuelystCardsById(Integer dc_id) {
        return emf.createEntityManager().createNamedQuery("DuelystCards.findByDc_id").setParameter("dc_id", dc_id).getResultList();
    }

    public List<DuelystCards> findDuelystCardsByCost(Integer dc_cost) {
        return emf.createEntityManager().createNamedQuery("DuelystCards.findByDc_cost").setParameter("dc_cost", dc_cost).getResultList();
    }

    public List<DuelystCards> findDuelystCardsByName(String dc_name) {
        return emf.createEntityManager().createNamedQuery("DuelystCards.findByDc_name").setParameter("dc_name", dc_name).getResultList();
    }

    public List<DuelystCards> findDuelystCardsByType(String dc_type) {
        return emf.createEntityManager().createNamedQuery("DuelystCards.findByDc_type").setParameter("dc_type", dc_type).getResultList();
    }

    public List<DuelystCards> findDuelystCardsByAttack(Integer dc_attack) {
        return emf.createEntityManager().createNamedQuery("DuelystCards.findByDc_attack").setParameter("dc_attack", dc_attack).getResultList();
    }

    public List<DuelystCards> findDuelystCardsByDefense(Integer dc_defense) {
        return emf.createEntityManager().createNamedQuery("DuelystCards.findByDc_defense").setParameter("dc_defense", dc_defense).getResultList();
    }

    public List<DuelystCards> findDuelystCardsByAbilities(String dc_abilities) {
        return emf.createEntityManager().createNamedQuery("DuelystCards.findByDc_abilities").setParameter("dc_abilities", dc_abilities).getResultList();
    }

    public List<DuelystCards> findDuelystCardsByCardText(String dc_cardText) {
        return emf.createEntityManager().createNamedQuery("DuelystCards.findByDc_cardText").setParameter("dc_cardText", dc_cardText).getResultList();
    }

    public List<DuelystCards> findDuelystCardsByCardSet(String dc_cardSet) {
        return emf.createEntityManager().createNamedQuery("DuelystCards.findByDc_cardSet").setParameter("dc_cardSet", dc_cardSet).getResultList();
    }

    public List<DuelystCards> findDuelystCardsByRace(String dc_race) {
        return emf.createEntityManager().createNamedQuery("DuelystCards.findByDc_race").setParameter("dc_race", dc_race).getResultList();
    }

    public List<DuelystCards> findDuelystCardsByFaction(String dc_faction) {
        return emf.createEntityManager().createNamedQuery("DuelystCards.findByDcFaction").setParameter("dc_faction", dc_faction).getResultList();
    }
    
    public DuelystCards selectDuelystCardByFaction(String dc_faction){
        return emf.createEntityManager().find(DuelystCards.class, dc_faction);
    }

}
