package com.jaein.persistence;

import java.util.List;

import com.jaein.domain.BoardVO;
import com.jaein.domain.Criteria;
import com.jaein.domain.SearchCriteria;

//게시판과 관련된 기능들.
public interface BoardDAO {

	public void create(BoardVO vo) throws Exception; 

	public BoardVO read(Integer bno) throws Exception; 

	public void update(BoardVO vo) throws Exception; 

	public void delete(Integer bno) throws Exception; 

	public List<BoardVO> listPage(int page) throws Exception; 

	public List<BoardVO> listCriteria(Criteria cri) throws Exception;	

	public int countPaging(Criteria cri) throws Exception;	

	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception;	

	public int listSearchCount(SearchCriteria cri) throws Exception;
	
    public int updateViewCnt(Integer bno)throws Exception;	

}