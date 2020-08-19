/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fai.controller;

import com.fai.model.Student;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.Enumeration;
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

/**
 *
 * @author LaptopAZ.vn
 */
@WebServlet("/EditStudent/*")
public class EditStudent extends HttpServlet {

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

        String id = request.getParameter("id");
        String code = request.getParameter("code");
        String fullName = request.getParameter("fullName");
        String gender = request.getParameter("genderSelect");
        String hometown = request.getParameter("hometown");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");

        String yearOfBirthStr = request.getParameter("yearOfBirth");
        Integer yearOfBirth = Integer.valueOf(yearOfBirthStr);
        em.getTransaction().begin();
        Student student = em.find(Student.class, id);
        student.setCode(code);
        student.setFullName(fullName);
        student.setGender(gender);
        student.setHometown(hometown);
        student.setPhoneNumber(phoneNumber);
        student.setEmail(email);
        student.setYearOfBirth(yearOfBirth);
        em.merge(student);
        em.getTransaction().commit();

        request.getRequestDispatcher("/").forward(request, response);
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
