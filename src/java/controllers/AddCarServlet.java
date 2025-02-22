package controllers;

import models.Car;
import service.CarService;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/AddCarServlet")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2, 
    maxFileSize = 1024 * 1024 * 10, 
    maxRequestSize = 1024 * 1024 * 50 
)
public class AddCarServlet extends HttpServlet {
    private CarService carService = new CarService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        String carName = request.getParameter("carName");
        String category = request.getParameter("category");
        double price = 0.0;
    try {
        String priceStr = request.getParameter("price");
        if (priceStr == null || priceStr.trim().isEmpty()) {
            throw new IllegalArgumentException("Price cannot be empty.");
        }
        price = Double.parseDouble(priceStr);
        if (price <= 0) {
            throw new IllegalArgumentException("Price must be greater than zero.");
        }
    } catch (Exception e) {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<script>alert('" + e.getMessage() + "'); window.location.href='addCar.jsp';</script>");
        return; 
    }


        Part filePart = request.getPart("carImage");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        String filePath;

        String uploadPath = getServletContext().getRealPath("/uploads"); 
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs(); 
        }

      
        if (fileName != null && !fileName.isEmpty()) {
          
            String uniqueFileName = System.currentTimeMillis() + "_" + fileName;
            filePath = "uploads" + File.separator + uniqueFileName;
            String fullFilePath = uploadPath + File.separator + uniqueFileName;

            // Write the file to disk
            filePart.write(fullFilePath);
        } else {
            filePath = "uploads" + File.separator + "default.jpg"; 
        }

        Car car = new Car(0, carName, price, category, true, filePath);

        boolean isAdded = carService.addCar(car);

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        if (isAdded) {
            response.sendRedirect(request.getContextPath() + "/admin/adminIndex.jsp"); 
            out.println("<script>alert('Car added successfully!');");
        } else {
            out.println("<script>alert('Failed to add car. Try again.'); window.location.href='addCar.jsp';</script>");
        }
    }
}