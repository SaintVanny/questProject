package quest;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.mockito.Mockito;

import static org.junit.jupiter.api.Assertions.*;
class StartServletTest {

    @org.junit.jupiter.api.Test
    public void testDoPost() throws Exception {
            HttpServletRequest request = Mockito.mock(HttpServletRequest.class);
            HttpServletResponse response = Mockito.mock(HttpServletResponse.class);
        HttpSession session = Mockito.mock(HttpSession.class);

        Mockito.when(request.getSession()).thenReturn(session);
        Mockito.when(session.getAttribute("health")).thenReturn(100);
        Mockito.when(session.getAttribute("foodFound")).thenReturn(false);
        Mockito.when(session.getAttribute("keyFound")).thenReturn(false);
        Mockito.when(session.getAttribute("toolFound")).thenReturn(false);
        Mockito.when(session.getAttribute("portalFound")).thenReturn(false);

        StartServlet servlet = new StartServlet();
        servlet.doPost(request, response);

        assertEquals(100, (int) session.getAttribute("health"));
    }
}