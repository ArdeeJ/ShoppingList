package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ardee
 */
public class ShoppingListServlet extends HttpServlet {

    ArrayList items = new ArrayList();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");

        session.setAttribute("username", username);

        if (username == null || username.equals("")) {
            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp")
                    .forward(request, response);
        } else {
            if (request.getParameter("action").equals("logout")) {
                session.invalidate();
                getServletContext().getRequestDispatcher("/WEB-INF/register.jsp")
                        .forward(request, response);
            }
            getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp")
                    .forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String username = (String) request.getParameter("username");
        String action = request.getParameter("action");
        items = new ArrayList();

        switch (action) {
            case "register":
                items = new ArrayList();
                session.setAttribute("itemList", items);
                session.setAttribute("username", username);
                break;
            case "add":
                {
                    String item = request.getParameter("item");
                    items.add(item);
                    session.setAttribute("itemList", items);
                    break;
                }
            case "delete":
                {
                    String item = request.getParameter("item");
                    ArrayList list = (ArrayList) session.getAttribute("itemList");
                    list.remove(item);
                    session.setAttribute("itemList", list);
                    break;
                }
            default:
                break;
        }

        getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp")
                    .forward(request, response);

    }
}
