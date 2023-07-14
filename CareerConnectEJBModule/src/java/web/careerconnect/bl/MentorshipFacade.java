/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package web.careerconnect.bl;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import web.careerconnect.entities.Mentorship;

/**
 *
 * @author ntokozo
 */
@Stateless
public class MentorshipFacade extends AbstractFacade<Mentorship> implements MentorshipFacadeLocal {

    @PersistenceContext(unitName = "CareerConnectEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MentorshipFacade() {
        super(Mentorship.class);
    }

    @Override
    public List<Mentorship> FindMentorshipUsingStudentEmail(String email) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Mentorship> FindMentorshipUsingMentorEmail(String email) {
        Query query = em.createQuery("SELECT m FROM Mentorship m WHERE m.email =:email");
        
        //pass
        query.setParameter("email", email);
        
        //
        List<Mentorship> mList = query.getResultList();
        
        return mList;
    }
    
}
