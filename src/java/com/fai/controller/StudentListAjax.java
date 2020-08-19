/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fai.controller;

import com.fai.model.Student;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author LaptopAZ.vn
 */
@WebServlet("/StudentListAjax/*")
public class StudentListAjax extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        EntityManagerFactory emFactory = Persistence.createEntityManagerFactory("wcdasmPU");
        EntityManager em = emFactory.createEntityManager();

        em.getTransaction().begin();
        Query q = em.createQuery("select s from Student s");
        List<Student> studentList = q.getResultList();
        Integer counter = studentList.size();
        Gson gson = new Gson();
        String abc = gson.toJson(studentList);
        ArrayList<String[]> arr = new ArrayList<>();

        String str = "";

        for (Student s : studentList) {
            str = "";
            str += s.getId() + "," + s.getCode() + "," + s.getFullName() + "," + s.getGenderString() + "," + s.getHometown() + "," + s.getPhoneNumber() + "," + s.getEmail() + "," + s.getYearOfBirth() + "," + 
                    "            <a type=\"button\" href=\"UpdateStudent?id="+ s.getId()+"\" id=\"btn-modal"+ s.getId()+"\" data-id=\""+ s.getId()+"\">\n"
                    + "                <i class=\"fas fa-pen text-dark\"></i></a>\n"
                    + "            <a class=\"delete\" type=\"button\" onclick=\"deleteStudent("+ s.getId()+")\" id=\"btn-modal"+ s.getId()+"\" dataId=\""+ s.getId()+"\">\n"
                    + "                <i class=\"fas fa-trash-alt text-dark\"></i></a>\n";
            String[] words = str.split(",");
            arr.add(words);
        }

        HashMap<String, Object> mapper = new HashMap();
        mapper.put("draw", 1);
        mapper.put("recordsTotal", counter);
        mapper.put("recordsFiltered", counter);
        mapper.put("data", arr);
        String result = gson.toJson(mapper);
        String st = "1";
        em.getTransaction().commit();

        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().write(result);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
