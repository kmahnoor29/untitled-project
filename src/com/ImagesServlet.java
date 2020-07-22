package com;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by MAHNOOR on 6/23/2020.
 */
@WebServlet(name = "ImagesServlet")
public class ImagesServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }



    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PrintWriter out=response.getWriter();
        response.setContentType("TEXT/HTML");
        String path=request.getServletContext().getRealPath("Images/");
        File folder = new File(path);
        File[] listOfFiles = folder.listFiles();
        for (int i = 0; i < listOfFiles.length; i++)
        {
            //ok ho gya ??  han g thank you sooooo much no need wlecome and ab mera sara kam asan hogya a ab mujy upload wla and download wla kam nhi krna pryga simple file upload and view ok thk ho gya thanks !!!!kye sharminda kar rahe ho :P nend haram kr di h mne tmri nahe nahe asi baat nahe ha friend k lea kuch b kar sakhta ha thanks for trsut me np :) ok Allah HafizAllah hafiz
            if (listOfFiles[i].isFile())
            {
                String abc="Images\\";

              //  out.print("<img src='"+abc.concat("'\'+)+"' width='242' height='242' />");
                out.println(abc+listOfFiles[i].getName());
                out.print("<img src= '"+abc+listOfFiles[i].getName()+"' width='242' height='242' />");
                }
            else
            {
                System.out.println("file not found");

            }
        }
    }
}
