/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package web.careerconnect.bl;

import java.util.List;
import javax.ejb.Local;
import web.careerconnect.entities.Mentorship;

/**
 *
 * @author ntokozo
 */
@Local
public interface MentorshipFacadeLocal {

    void create(Mentorship mentorship);

    void edit(Mentorship mentorship);

    void remove(Mentorship mentorship);

    Mentorship find(Object id);

    List<Mentorship> findAll();
    
    List<Mentorship> FindMentorshipUsingStudentEmail(String email);
    
    List<Mentorship> FindMentorshipUsingMentorEmail(String email); 

    List<Mentorship> findRange(int[] range);

    int count();
    
}
