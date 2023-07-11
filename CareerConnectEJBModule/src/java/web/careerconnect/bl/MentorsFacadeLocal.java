/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package web.careerconnect.bl;

import java.util.List;
import javax.ejb.Local;
import web.careerconnect.entities.Mentors;

/**
 *
 * @author ntokozo
 */
@Local
public interface MentorsFacadeLocal {

    void create(Mentors mentors);

    void edit(Mentors mentors);

    void remove(Mentors mentors);

    Mentors find(Object id);

    List<Mentors> findAll();

    List<Mentors> findRange(int[] range);

    int count();
    
}
