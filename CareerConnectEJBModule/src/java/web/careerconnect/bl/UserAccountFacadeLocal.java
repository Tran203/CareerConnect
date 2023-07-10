/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package web.careerconnect.bl;

import java.util.List;
import javax.ejb.Local;
import web.careerconnect.entities.UserAccount;

/**
 *
 * @author ntokozo
 */
@Local
public interface UserAccountFacadeLocal {

    void create(UserAccount userAccount);

    void edit(UserAccount userAccount);

    void remove(UserAccount userAccount);

    UserAccount find(Object id);

    List<UserAccount> findAll();

    List<UserAccount> findRange(int[] range);

    int count();
    
}
