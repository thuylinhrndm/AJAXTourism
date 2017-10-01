/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

/**
 *
 * @author x11113065
 */
@WebServlet(name = "Country", urlPatterns = {"/Country"})
public class Country extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    PrintWriter out;
    String path;
    String XMLFileName;
    String XSLFileName;
    StreamSource XMLSource;
    StreamSource XSLSource;
    StreamResult homeOutput;
    TransformerFactory tf;
    Transformer t;
    String xsl;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        try {
            if (request.getParameter("name").startsWith("The Socialist Republic of Vietnam")) {
                xsl = "/vietnam.xsl";
            } else if (request.getParameter("name").startsWith("The Sultanate of Oman")) {
                xsl = "/oman.xsl";
            } else if (request.getParameter("name").startsWith("The Republic of Ireland")) {
                xsl = "/ireland.xsl";
            } else {
                xsl = "/some.xsl";
            }
            path = getServletContext().getRealPath("/WEB-INF/");
            XMLFileName = path + "/tourism.xml";
            XSLFileName = path + xsl;

            XMLSource = new StreamSource(XMLFileName);
            XSLSource = new StreamSource(XSLFileName);

            // Identify Result
            homeOutput = new StreamResult(out);

            // Create TransformerFactory
            tf = TransformerFactory.newInstance();

            // Create Transformer
            t = tf.newTransformer(XSLSource);

            // Apply transform
            t.transform(XMLSource, homeOutput);

        } catch (TransformerConfigurationException ex) {

            System.out.println("Encountered TransformerConfiguration Error: " + ex.getMessage());

        } catch (TransformerException ex) {

            System.out.println("Encountered Transformer Error: " + ex.getMessage());
        } finally {
            out.println("finally clause executed");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
