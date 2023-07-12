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
        //Query
        Query query = em.createQuery("SELECT U FROM Users U WHERE U.email = :email AND U.password = :password");
        //variables to check
        query.setParameter("email", email);
        query.setParameter("password", password);

        try {
            // Return user account if found
            Users u = (Users) query.getSingleResult();
            return u;
        } catch (NoResultException e) {
            // Return null if no result found
            return null;
        }
    }

}
