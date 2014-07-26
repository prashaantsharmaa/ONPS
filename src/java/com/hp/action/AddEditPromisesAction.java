/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp;

import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.hibernate.Session;

/**
 *
 * @author prakush
 */
public class AddEditPromisesAction extends ActionSupport implements ServletRequestAware{

    HttpServletRequest request ;
    
    private int cID ;
    private String candidateName ;
    private String promises ;

    public int getcID() {
        return cID;
    }

    public void setcID(int cID) {
        this.cID = cID;
    }
    

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    public String getCandidateName() {
        return candidateName;
    }

    public void setCandidateName(String candidateName) {
        this.candidateName = candidateName;
    }

    public String getPromises() {
        return promises;
    }

    public void setPromises(String promises) {
        this.promises = promises;
    }

    

    public Session getS() {
        return s;
    }

    public void setS(Session s) {
        this.s = s;
    }

    Session s=HibernateUtil.getSessionFactory().openSession();
    
    @Override
    public String execute() throws Exception {
       
        Candidate candidate = (Candidate)s.get(Candidate.class, cID);
        
        if(candidate != null)
        {
            Candidatepromises cpromise = new Candidatepromises();
            
            cpromise.setCandidate(candidate);
            cpromise.setPromises(promises);
            
            s.save(cpromise);
            
            s.beginTransaction().commit();
            return SUCCESS ;
        }
        else
        {
            return ERROR ;
        }

      
        
//To change body of generated methods, choose Tools | Templates.
    }
    
    
    @Override
    public void validate() {
        //To change body of generated methods, choose Tools | Templates.
    }

    public void setServletRequest(HttpServletRequest hsr) {
       this.request = hsr ;
    }
    
    
}
