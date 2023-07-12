/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package web.careerconnect.bl;

import java.util.List;
import javax.ejb.Local;
import web.careerconnect.entities.Students;

/**
 *
 * @author ntokozo
 */
@Local
public interface StudentsFacadeLocal {

    void create(Students students);

    void edit(Students students);

    void remove(Students students);

    Students find(Object id);
    
    Students findStudentUsingEmail(String email);

    List<Students> findAll();

    List<Students> findRange(int[] range);

    int count();
    
}
