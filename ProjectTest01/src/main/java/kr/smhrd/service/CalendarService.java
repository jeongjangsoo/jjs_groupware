package kr.smhrd.service;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import kr.smhrd.entity.Board;
import kr.smhrd.entity.Calendar;
import kr.smhrd.mapper.CalendarMapper;


@Service
public class CalendarService  {
	
	@Autowired
	private CalendarMapper calendarMapper;
	
	public List<Calendar> getList(int memeber_id){
		List<Calendar> list = calendarMapper.getList(memeber_id);
		return list;
	}
	
	public void inCal(int member_id) {
		calendarMapper.inCal(member_id);
					
		}
	
	
	
}
