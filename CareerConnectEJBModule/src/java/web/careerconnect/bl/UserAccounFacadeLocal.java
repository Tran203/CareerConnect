/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package web.careerconnect.bl;

import java.util.List;
import javax.ejb.Local;
import web.careerconnect.entities.UserAccoun;

/**
 *
 * @author ntokozo
 */
@Local
public interface UserAccounFacadeLocal {

    void create(UserAccoun userAccoun);

    void edit(UserAccoun userAccoun);

    void remove(UserAccoun userAccoun);

    UserAccoun find(Object id);

    List<UserAccoun> findAll();

    List<UserAccoun> findRange(int[] range);

    int count();
    
}
