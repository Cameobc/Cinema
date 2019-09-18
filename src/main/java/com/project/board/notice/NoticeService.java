package com.project.board.notice;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.project.board.BoardService;
import com.project.board.BoardVO;
import com.project.files.FilesDAO;
import com.project.files.FilesVO;
import com.project.util.FileSaver;
import com.project.util.PageMaker;

public class NoticeService implements BoardService {

	@Inject
	private NoticeDAO noticeDAO;
	@Inject
	private FilesDAO filesDAO;
	@Inject
	private FileSaver fileSaver;
	
	
	@Override
	public int setWrite(BoardVO boardVO, List<MultipartFile> files, HttpSession session) throws Exception {
		String realPath = session.getServletContext().getRealPath("/resources/notice");
		int result = noticeDAO.setWrite(boardVO);
		
		for(MultipartFile file : files) {
			if(file.getOriginalFilename().length()>0) {
				FilesVO filesVO = new FilesVO();
				filesVO.setNum(boardVO.getNum());
				filesVO.setOname(file.getOriginalFilename());
				String fname=fileSaver.saveFile3(realPath, file);
				filesVO.setFname(fname);
				result=filesDAO.setWrite(filesVO);
			}
			
		}
		
		return result;
	}

	@Override
	public int setDelete(int num, HttpSession session) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int setUpdate(BoardVO boardVO, List<MultipartFile> files, HttpSession session) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public BoardVO getSelect(int num) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardVO> getList(PageMaker pageMaker) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
