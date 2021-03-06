package com.jaein.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import com.jaein.domain.BoardVO;
import com.jaein.domain.Criteria;
import com.jaein.domain.SearchCriteria;
import com.jaein.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {

	 @Inject
	  private BoardDAO dao;

	  @Override
	  public void regist(BoardVO board) throws Exception {
	    dao.create(board);
	  }

	  @Override
	  public BoardVO read(Integer bno) throws Exception {
	    return dao.read(bno);
	  }

	  @Override
	  public void modify(BoardVO board) throws Exception {
	    dao.update(board);
	  }

	  @Override
	  public void remove(Integer bno) throws Exception {
	    dao.delete(bno);
	  }

	  @Override
	  public List<BoardVO> listCriteria(Criteria cri) throws Exception {

	    return dao.listCriteria(cri);
	  }

	  @Override
	  public int listCountCriteria(Criteria cri) throws Exception {

	    return dao.countPaging(cri);
	  }

	  @Override
	  public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {

	    return dao.listSearch(cri);
	  }

	  @Override
	  public int listSearchCount(SearchCriteria cri) throws Exception {

	    return dao.listSearchCount(cri);
	  }

	@Override
	public int updateViewCnt(Integer bno) throws Exception {
		return dao.updateViewCnt(bno);
	}
}