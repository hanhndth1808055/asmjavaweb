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
import java.util.ArrayList;
import java.util.HashMap;
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
@WebServlet("/SearchStudent/*")
public class SearchStudent extends HttpServlet {

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
        String code = request.getParameter("code");
        String fullName = request.getParameter("fullName");
        String gender = request.getParameter("gender");
        String hometown = request.getParameter("hometown");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        Integer minYearOfBirth = null;
        Integer maxYearOfBirth = null;
        if (request.getParameter("minyear") != null && !request.getParameter("minyear").isEmpty()) {
            minYearOfBirth = Integer.parseInt(request.getParameter("minyear"));
        }
        if (request.getParameter("maxyear") != null && !request.getParameter("maxyear").isEmpty()) {
            maxYearOfBirth = Integer.parseInt(request.getParameter("maxyear"));
        }

        EntityManagerFactory emFactory = Persistence.createEntityManagerFactory("wcdasmPU");
        EntityManager em = emFactory.createEntityManager();

        em.getTransaction().begin();
        String queryString = "SELECT s from Student s ";
        ArrayList<String> queryParts = new ArrayList<String>();

        if (fullName != null && !fullName.isEmpty()) {
            queryParts.add("lower(s.fullName) LIKE lower(:fullName) ");
        }
        if (code != null && !code.isEmpty()) {
            queryParts.add("lower(s.code) LIKE lower(:code) ");
        }
        if (gender != null && !gender.isEmpty()) {
            queryParts.add("lower(s.gender) = lower(:gender) ");
        }
        if (hometown != null && !hometown.isEmpty()) {
            queryParts.add("lower(s.hometown) LIKE lower(:hometown) ");
        }
        if (phoneNumber != null && !phoneNumber.isEmpty()) {
            queryParts.add("lower(s.phoneNumber) LIKE lower(:phoneNumber) ");
        }
        if (email != null && !email.isEmpty()) {
            queryParts.add("lower(s.email) LIKE lower(:email) ");
        }
        if (minYearOfBirth != null) {
            queryParts.add("s.yearOfBirth >= :minYearOfBirth ");
        }
        if (maxYearOfBirth != null) {
            queryParts.add("s.yearOfBirth <= :maxYearOfBirth ");
        }
        if (queryParts.size() != 0) {
            for (Integer i = 0; i < queryParts.size(); i++) {
                if (i == 0) {
                    queryString += "WHERE ";
                    queryString += queryParts.get(i);
                } else {
                    queryString += "AND ";
                    queryString += queryParts.get(i);
                }
            }
        }
//        queryString += " ";
//        Query q = em.createQuery("SELECT s from Student s WHERE lower(s.fullName) LIKE lower(:fullName) AND lower(s.code) LIKE lower(:code) AND lower(s.gender) = lower(:gender) AND lower(s.hometown) LIKE lower(:hometown) AND lower(s.phoneNumber) LIKE lower(:phoneNumber) AND lower(s.email) LIKE lower(:email) AND s.yearOfBirth >= :minYearOfBirth AND s.yearOfBirth <= :maxYearOfBirth ");
        Query q = em.createQuery(queryString);
        if (fullName != null && !fullName.isEmpty()) {
            q.setParameter("fullName", "%" + fullName + "%");
        }
        if (code != null && !code.isEmpty()) {
            q.setParameter("code", "%" + code + "%");
        }
        if (gender != null && !gender.isEmpty()) {
            q.setParameter("gender", gender);
        }
        if (hometown != null && !hometown.isEmpty()) {
            q.setParameter("hometown", "%" + hometown + "%");
        }
        if (phoneNumber != null && !phoneNumber.isEmpty()) {
            q.setParameter("phoneNumber", "%" + phoneNumber + "%");
        }
        if (email != null && !email.isEmpty()) {
            q.setParameter("email", "%" + email + "%");
        }
        if (minYearOfBirth != null) {
            q.setParameter("minYearOfBirth", minYearOfBirth);
        }
        if (maxYearOfBirth != null) {
            q.setParameter("maxYearOfBirth", maxYearOfBirth);
        }

        List<Student> studentList = q.getResultList();

        Integer counter = studentList.size();
        Gson gson = new Gson();
        String abc = gson.toJson(studentList);
        ArrayList<String[]> arr = new ArrayList<>();

        String str = "";

        for (Student s : studentList) {
            str = "";
            str += s.getId() + "," + s.getCode() + "," + s.getFullName() + "," + s.getGenderString() + "," + s.getHometown() + "," + s.getPhoneNumber() + "," + s.getEmail() + "," + s.getYearOfBirth() + ","
                    + "            <a type=\"button\" href=\"UpdateStudent?id=" + s.getId() + "\" id=\"btn-modal" + s.getId() + "\" data-id=\"" + s.getId() + "\">\n"
                    + "                <i class=\"fas fa-pen text-dark\"></i></a>\n"
                    + "            <a class=\"delete\" type=\"button\" onclick=\"deleteStudent(" + s.getId() + ")\" id=\"btn-modal" + s.getId() + "\" dataId=\"" + s.getId() + "\">\n"
                    + "                <i class=\"fas fa-trash-alt text-dark\"></i></a>\n";
            String[] words = str.split(",");
            arr.add(words);
        }

        String result = gson.toJson(arr);
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
