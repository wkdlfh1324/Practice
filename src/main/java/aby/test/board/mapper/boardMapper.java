package aby.test.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import aby.test.board.vo.boardVO;

/**
 * boardMapper
 */
@Mapper
public interface boardMapper {

    public List<boardVO> selectBoard();
    public boardVO selectInfo(int brdNo);
    public void insertBoard(boardVO vo);
    public void updateBoard(boardVO vo);
    public void deleteBoard(int brdNo);

}