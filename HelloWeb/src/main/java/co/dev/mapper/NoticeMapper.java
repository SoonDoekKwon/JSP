package co.dev.mapper;

import java.util.List;

import co.dev.vo.NoticeVO;

public interface NoticeMapper {
	// 목록.	
	public List<NoticeVO> noticeList();	
	public List<NoticeVO> noticeWithPaging(int page); //페이징
	
	//등록
	public int insertNotice(NoticeVO vo);
	
	//단건 조회
	public NoticeVO selectNotice(int nid);
	
	//조회수 증가
	public int updateCount(int nid);
	
}
