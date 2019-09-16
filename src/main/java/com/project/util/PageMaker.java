package com.project.util;

public class PageMaker {

	//설정할 수 있는 것들
	private Integer curPage;
	private int perPage;
	private String kind;
	private String search;
	private int perBlock;
	
	//makeRow
	private int startRow;
	private int lastRow;
	
	//makePage
	private int curBlock;
	private int totalBlock;
	private int startNum;
	private int lastNum;
	
	
	
	public int getPerBlock() {
		return perBlock;
	}
	public void setPerBlock(int perBlock) {
		this.perBlock = perBlock;
	}
	public Integer getCurPage() {
		return curPage;
	}
	public void setCurPage(Integer curPage) {
		if(curPage==null) {
			curPage= 1;
		}
		this.curPage = curPage;
	}
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		if(search == null) {
			search = "";
		}
		this.search = search;
	}
	public int getStartRow() {
		return startRow;
	}
	public int getLastRow() {
		return lastRow;
	}
	public int getCurBlock() {
		return curBlock;
	}
	public int getTotalBlock() {
		return totalBlock;
	}
	public int getStartNum() {
		return startNum;
	}
	public int getLastNum() {
		return lastNum;
	}
	
	public void makeRow() {
		startRow = (this.curPage-1)*this.perPage+1;
		lastRow = curPage*perPage;
	}
	
	public void makePage(int totalCount) {
		//1. 전체 글의 개수를 이용해서 전체 페이지 구하기
		int totalPage = totalCount/perPage;
		if(totalCount%perPage != 0) {
			totalPage++;
		}
		
		//2. 전체 페이지와 perBlock을 이용해 전체 블록 수 구하기
		totalBlock = totalPage/perBlock;
		if(totalPage%perBlock != 0) {
			totalBlock++;
		}
		
		//3. 현재 페이지와 perBlock을 이용해서 현재 블록 구하기
		curBlock = curPage/perBlock;
		if(curPage%perBlock != 0) {
			curBlock++;
		}
		
		//4. perBlock와 현재 블럭을 이용해 startNum, lastNum 구하기
		startNum = (curBlock-1)*perBlock+1;
		lastNum = curBlock*perBlock;
		if(curBlock == totalBlock) {
			lastNum = totalPage;
		}
		
		if(totalCount == 0) {
			lastNum = 0;
		}
	}
	
	
}
