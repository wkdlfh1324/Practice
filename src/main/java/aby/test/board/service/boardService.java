package aby.test.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aby.test.board.mapper.boardMapper;
import aby.test.board.vo.boardVO;

/**
 * boardService
 */
@Service
public class boardService implements boardMapper{

    @Autowired
    public boardMapper mapper;

    public List<boardVO> selectBoard(){
        return mapper.selectBoard();
    }
    
    public void insertBoard(boardVO vo){
        mapper.insertBoard(vo);
    }

	@Override
	public boardVO selectInfo(int brdNo) {
		return mapper.selectInfo(brdNo);
	}

    @Override
    public void updateBoard(boardVO vo) {
        mapper.updateBoard(vo);
    }

    @Override
    public void deleteBoard(int brdNo) {
        mapper.deleteBoard(brdNo);
    }
}