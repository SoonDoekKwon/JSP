package co.dev.service;

import java.util.List;

import co.dev.vo.NoticeVO;

public interface NoticeService {
	// 업무로직을 처리하기 위한 인터페이스
	
	// 목록.
	public List<NoticeVO> noticeList(int page);
	
	public List<NoticeVO> noticeWithPaging(int page);
	
	//등록.
	public boolean addNotice(NoticeVO vo);
	
	public NoticeVO getNotice(int nid);
	
	
}