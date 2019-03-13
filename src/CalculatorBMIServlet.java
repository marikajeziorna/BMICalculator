import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/calculatorBMI")
public class CalculatorBMIServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");

        String weight = request.getParameter("Weight");
        String height = request.getParameter("Height");

        if (isNullOrEmpty(weight)) {
            throw new IllegalArgumentException("Height is required");
        }

        if (isNullOrEmpty(height)) {
            throw new IllegalArgumentException("Weight is required");
        }

        double weightValue = Double.valueOf(weight);
        double heightValue = Double.valueOf(height);

        double bmi = getBmi(response, weightValue, heightValue);
        isClassifiedInRange(response, bmi);
    }

    private double getBmi(HttpServletResponse response, double weightValue, double heightValue) throws IOException {
        double bmi = (weightValue / Math.floor(Math.pow(heightValue / 100, 2)));

        response.getWriter().println("Your BMI is " + bmi + "kg");
        return bmi;
    }

    private void isClassifiedInRange(HttpServletResponse response, double bmi) throws IOException {
        if (bmi < 18.5) {
            response.getWriter().println("You are underweight.");
        } else if (bmi >= 18.5 && bmi <= 23.9) {
            response.getWriter().println("You are normal.");
        } else if (bmi > 23.9 && bmi <= 29.9) {
            response.getWriter().println("You are overweight.");
        } else if (bmi > 29.9) {
            response.getWriter().println("You are obese.");
        }
    }

    private boolean isNullOrEmpty(String height) {
        return (height == null) || (height.length() == 0);
    }
}
