/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fai.model;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author LaptopAZ.vn
 */
@Entity
@Table(name = "student")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Student.findAll", query = "SELECT s FROM Student s")
    , @NamedQuery(name = "Student.findById", query = "SELECT s FROM Student s WHERE s.id = :id")
    , @NamedQuery(name = "Student.findByCode", query = "SELECT s FROM Student s WHERE s.code = :code")
    , @NamedQuery(name = "Student.findByFullName", query = "SELECT s FROM Student s WHERE s.fullName = :fullName")
    , @NamedQuery(name = "Student.findByGender", query = "SELECT s FROM Student s WHERE s.gender = :gender")
    , @NamedQuery(name = "Student.findByHometown", query = "SELECT s FROM Student s WHERE s.hometown = :hometown")
    , @NamedQuery(name = "Student.findByPhoneNumber", query = "SELECT s FROM Student s WHERE s.phoneNumber = :phoneNumber")
    , @NamedQuery(name = "Student.findByEmail", query = "SELECT s FROM Student s WHERE s.email = :email")
    , @NamedQuery(name = "Student.findByYearOfBirth", query = "SELECT s FROM Student s WHERE s.yearOfBirth = :yearOfBirth")
    })
public class Student implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "id")
    private String id;
    @Basic(optional = false)
    @Column(name = "code")
    private String code;
    @Column(name = "fullName")
    private String fullName;
    @Column(name = "gender")
    private String gender;
    @Column(name = "hometown")
    private String hometown;
    @Column(name = "phoneNumber")
    private String phoneNumber;
    @Column(name = "email")
    private String email;
    @Column(name = "yearOfBirth")
    private Integer yearOfBirth;

    public Student() {
    }

    public Student(String fullName, String gender, String hometown, String phoneNumber, String email, Integer yearOfBirth) {
        this.id = generateCode(fullName);
        this.code = generateCode(fullName);
        this.fullName = fullName;
        this.gender = gender;
        this.hometown = hometown;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.yearOfBirth = yearOfBirth;
    }

    public Student(String id, String code, String fullName, String gender, String hometown, String phoneNumber, String email, Integer yearOfBirth) {
        this.id = id;
        this.code = code;
        this.fullName = fullName;
        this.gender = gender;
        this.hometown = hometown;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.yearOfBirth = yearOfBirth;
    }

    public Student(String id) {
        this.id = id;
    }

    public Student(String id, String code) {
        this.id = id;
        this.code = code;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getHometown() {
        return hometown;
    }

    public void setHometown(String hometown) {
        this.hometown = hometown;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getYearOfBirth() {
        return yearOfBirth;
    }

    public void setYearOfBirth(Integer yearOfBirth) {
        this.yearOfBirth = yearOfBirth;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    public String getGenderString() {
        String gender = this.gender.equals("f") ? "Female" : (this.gender.equals("m") ? "Male" : "Other");
        return gender;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Student)) {
            return false;
        }
        Student other = (Student) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.fai.Student[ id=" + id + " ]";
    }

    private String generateCode(String fullName) {
        String initials = "";
        String time = DateTimeFormatter.ofPattern("yyyyMMddHHmmss").format(LocalDateTime.now());
        //get the first letter of the name and add it to our initial string
        char c = fullName.charAt(0);
        initials += c;
        for (int i = 0; i < fullName.length(); i++) {
            char letter = fullName.charAt(i);
            // if we find a space, select the first letter after it until the end
            if (letter == ' ') {
                initials += fullName.charAt(i + 1);
            }

        }
        return initials.toUpperCase() + time;
    }

}
