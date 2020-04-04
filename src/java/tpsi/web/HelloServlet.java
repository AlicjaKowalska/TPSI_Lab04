/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tpsi.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "HelloServlet", urlPatterns = {"/hello"})
public class HelloServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String imie = request.getParameter("firstName"); //pobiera imie z żądania
        String nazwisko = request.getParameter("lastName");
        String email = request.getParameter("email");

        //przekazywanie danych do jsp
        request.setAttribute("person", new Person(imie, nazwisko, email));

        //Lista dni tygodnia
        List<String> dni = new ArrayList<>();
        dni.add("Poniedziałek");
        dni.add("Wtorek");
        dni.add("Środa");
        dni.add("Czwartek");
        dni.add("Piątek");
        //przekazanie listy do JSP
        request.setAttribute("dniTygodnia", dni);

        request.getRequestDispatcher("hello.jsp").forward(request, response); //przekierowanie żądania do obsługi przez stronę hello.jsp

    }
}
