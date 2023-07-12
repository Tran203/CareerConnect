/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package web.careerconnect.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import web.careerconnect.entities.Users;

/**
 *
 * @author ntokozo
 */
@Stateless
public class UsersFacade extends AbstractFacade<Users> implements UsersFacadeLocal {

    @PersistenceContext(unitName = "CareerConnectEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsersFacade() {
        super(Users.class);
    }

    @Override
    public Users findAccount(String email, String password) {
        // Query
        Query query = em.createQuery("SELECT u FROM Users u WHERE u.email =:email");
        // Variables to check
        query.setParameter("email", email);
        //query.setParameter("password", password);

        // Check if the user account was found
        Users user = (Users)query.getSingleResult();
        

        return user;
    }

}
