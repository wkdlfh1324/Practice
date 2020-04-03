package aby.test.board.vo;

import java.util.Date;

import lombok.Data;

/**
 * boardVO
 */
@Data
public class boardVO {
    private int brdNo;
    private String title;
    private String writer;
    private String subject;
    private Date brd_regDate;
}