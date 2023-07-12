/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package web.careerconnect.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import web.careerconnect.entities.Mentors;
import web.careerconnect.entities.Students;

/**
 *
 * @author ntokozo
 */
@Stateless
public class MentorsFacade extends AbstractFacade<Mentors> implements MentorsFacadeLocal {

    @PersistenceContext(unitName = "CareerConnectEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MentorsFacade() {
        super(Mentors.class);
    }

    @Override
    public Mentors findMentorUsingEmail(String email) {
        //Query
        Query query = em.createQuery("SELECT M FROM Mentors M WHERE M.email = :email");
        //variables to check
        query.setParameter("email", email);
        
        //return student
        Mentors m = (Mentors) query.getSingleResult();
        
        return m;
    }
    
}
