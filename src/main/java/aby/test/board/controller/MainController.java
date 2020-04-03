package aby.test.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import aby.test.board.service.boardService;
import aby.test.board.vo.boardVO;
import lombok.extern.slf4j.Slf4j;

/**
 * MainController
 */
@Slf4j
@Controller
public class MainController {

    @Autowired
    boardService boardservice;

    @GetMapping("/")
    public String main(Model model){
        List<boardVO> boardList = boardservice.selectBoard();
        model.addAttribute("list", boardList);

        return "main";
    }

    @GetMapping("/info")
    public String boardInfo(@RequestParam("brdNo") int brdNo, Model model){
        log.info("getInfo");
        boardVO vo = boardservice.selectInfo(brdNo);
        model.addAttribute("read", vo);

        return "info";
    }

    @GetMapping("/update")
    public String boardUpdateForm(@RequestParam("brdNo") int brdNo, Model model){
        boardVO vo = boardservice.selectInfo(brdNo);
        model.addAttribute("read", vo);

        return "update";
    }

    @PostMapping("/updateBoard")
    public String boardUpdate(@RequestParam("brdNo") int brdNo,
                              @RequestParam("title") String title,
                              @RequestParam("subject") String subject){

        boardVO vo = new boardVO();
        vo.setBrdNo(brdNo);
        vo.setTitle(title);
        vo.setSubject(subject);

        boardservice.updateBoard(vo);
        
        return "redirect:/info?brdNo=" + brdNo;
    }

    @GetMapping("/insert")
    public String boardInsertForm(){

        return "insert";
    }

    @PostMapping("/insertBoard")
    public String boardInsert(@RequestParam("title") String title,
                              @RequestParam("writer") String writer,
                              @RequestParam("subject") String subject){

        boardVO vo = new boardVO();
        vo.setTitle(title);
        vo.setWriter(writer);
        vo.setSubject(subject);
        boardservice.insertBoard(vo);

        return "redirect:/";
    }

    @PostMapping("/delete")
    public String boardDelete(@RequestParam("brdNo") int brdNo){

        boardservice.deleteBoard(brdNo);
        return "redirect:/";
    }
    
}