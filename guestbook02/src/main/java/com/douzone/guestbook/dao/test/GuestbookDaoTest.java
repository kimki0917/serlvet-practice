package com.douzone.guestbook.dao.test;

import java.util.List;

import com.douzone.guestbook.dao.GuestbookDao;
import com.douzone.guestbook.vo.GuestbookVo;


public class GuestbookDaoTest {

	public static void main(String[] args) {
//		guestbookVo vo = new guestbookVo();
//	
//		vo.setName("둘리1");
//		vo.setPassword("1234");
//		vo.setMessage("호이 호이");
//		vo.setRegDate("2023-01-17 12:35:11");


		
		//testInsert(vo);
		
		testFindAll();
	}

	private static void testDeleteByNo(String no) {
		new GuestbookDao().deleteByNo(no);
	}

	private static void testFindAll() {
		List<GuestbookVo> list = new GuestbookDao().findAll();
		for(GuestbookVo vo : list) {
			System.out.println(vo);
		}
	}

	private static void testInsert(GuestbookVo vo) {
		new GuestbookDao().insert(vo);
	}

}
