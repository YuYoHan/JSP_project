package app.loading.action;

import java.time.DayOfWeek;
import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionTo;

public class ReserveAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// 날짜를 받아와서 년, 월, 일 나누어 보내줌.
		String date = req.getParameter("datefilter");
		String startYear = date.substring(6,10);
		String startMonth = date.substring(0,2);
		String startDay = date.substring(3,5);
		String endYear = date.substring(19,23);
		String endMonth = date.substring(13,15);
		String endDay = date.substring(16,18);
		//요일 가져오기
		
		LocalDate startweek = LocalDate.of(Integer.parseInt(startYear), Integer.parseInt(startMonth), Integer.parseInt(startDay));
		DayOfWeek startdayOfWeek = startweek.getDayOfWeek();
		int startDayOfWeekNumber = startdayOfWeek.getValue()-1;
		
		LocalDate endweek = LocalDate.of(Integer.parseInt(endYear), Integer.parseInt(endMonth), Integer.parseInt(endDay));
		DayOfWeek enddayOfWeek = endweek.getDayOfWeek();
		int endDayOfWeekNumber = enddayOfWeek.getValue()-1;
		
		
		String [] weekStirng = {"월","화","수","목","금","토","일"};
		//요일 뽑아쓰기
		String startweekhangle = weekStirng[startDayOfWeekNumber];
		String endweekhangle = weekStirng[endDayOfWeekNumber];
		String hotelnum = req.getParameter("hotelnum");
		String hotelname  = req.getParameter("hotelname");
		String hotelImg  = req.getParameter("hotelImg");
		String hotelPrice  = req.getParameter("hotelPrice");
		
        
		req.setAttribute("startYear", startYear);
		req.setAttribute("startMonth", startMonth);
		req.setAttribute("startDay", startDay);
		req.setAttribute("endYear", endYear);
		req.setAttribute("endMonth", endMonth);
		req.setAttribute("endDay", endDay);
		req.setAttribute("startweekhangle", startweekhangle);
		req.setAttribute("endweekhangle", endweekhangle);
		
		req.setAttribute("hotelnum", hotelnum);
		req.setAttribute("hotelname", hotelname);
		req.setAttribute("hotelImg", hotelImg);
		req.setAttribute("hotelPrice", hotelPrice);
		
		System.out.println("ReserveAction");
		ActionTo acto = new ActionTo();
		acto.setRedirect(false);
		acto.setPath("/app/loading/reserves.jsp");
		return acto;
	}
}
