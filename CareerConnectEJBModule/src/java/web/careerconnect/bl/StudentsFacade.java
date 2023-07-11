/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package web.careerconnect.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import web.careerconnect.entities.Students;

/**
 *
 * @author ntokozo
 */
@Stateless
public class StudentsFacade extends AbstractFacade<Students> implements StudentsFacadeLocal {

    @PersistenceContext(unitName = "CareerConnectEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public StudentsFacade() {
        super(Students.class);
    }
    
}
