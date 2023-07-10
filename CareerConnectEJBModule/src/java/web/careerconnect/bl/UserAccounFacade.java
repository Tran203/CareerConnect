/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package web.careerconnect.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import web.careerconnect.entities.UserAccoun;

/**
 *
 * @author ntokozo
 */
@Stateless
public class UserAccounFacade extends AbstractFacade<UserAccoun> implements UserAccounFacadeLocal {

    @PersistenceContext(unitName = "CareerConnectEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UserAccounFacade() {
        super(UserAccoun.class);
    }
    
}
