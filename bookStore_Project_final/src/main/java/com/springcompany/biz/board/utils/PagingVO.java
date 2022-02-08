package com.springcompany.biz.board.utils;

public class PagingVO {
	

		private int nowPage; //현재페이지
		private int startPage; //시작게시글
		private int endPage; //마지막게시글
		private int total; //총 수
		private int cntPerPage; //글 개수
		private int lastPage; //마지막 페이지
		private int cntPage = 5; //SQL쿼리에 쓸 시작과 끝
		
		public PagingVO(int total, int nowPage, int cntPerPage) {
			System.out.println("cntPerPage : "+cntPerPage);
			System.out.println("tatal : "+total);
			System.out.println("nowPage : "+nowPage);
			
			setCntPerPage(cntPerPage);
		 	setNowPage(nowPage);
			setTotal(total);
			
			calcLastPage(getTotal());
			calcStartEndPage(getNowPage(), cntPage);
		}

		//제일 마지막 페이지 계산
		//*
		public void calcLastPage(int total) {
			//setLastPage((int)Math.ceil((double)total/(double)cntPerPage));
			
			System.out.println("total : "+total+"     cntPerPage : "+getCntPerPage());
			setLastPage((int)((double)total/getCntPerPage()+0.95));
		}
		//*/
		//시작, 끝 페이지 계산
		public void calcStartEndPage(int nowPage, int cntPage) {
			setEndPage(((int)Math.ceil((double)nowPage / (double)cntPage)) * cntPage);
			if(getLastPage()<getEndPage()) {
				setEndPage(getLastPage());
			}
			setStartPage(getEndPage() - cntPage+1);
			if(getStartPage()<1) {
				setStartPage(1);
			}
		}
		
		public int getNowPage() {
			return nowPage;
		}

		public void setNowPage(int nowPage) {
			this.nowPage = nowPage;
		}

		public int getStartPage() {
			return startPage;
		}

		public void setStartPage(int startPage) {
			this.startPage = startPage;
		}

		public int getEndPage() {
			return endPage;
		}

		public void setEndPage(int endPage) {
			this.endPage = endPage;
		}

		public int getTotal() {
			return total;
		}

		public void setTotal(int total) {
			this.total = total;
		}

		public int getCntPerPage() {
			return cntPerPage;
		}

		public void setCntPerPage(int cntPerPage) {
			this.cntPerPage = cntPerPage;
		}

		public int getLastPage() {
			return lastPage;
		}

		public void setLastPage(int lastPage) {
			this.lastPage = lastPage;
		}

		
		public int getCntPage() {
			return cntPage;
		}

		public void setCntPage(int cntPage) {
			this.cntPage = cntPage;
		}
		@Override
		public String toString() {
			return "PagingVO [nowPage=" + nowPage + ", startPage=" + startPage + ", endPage=" + endPage + ", total=" + total
					+ ", cntPerPage=" + cntPerPage + ", lastPage=" + lastPage
					+ ", cntPage=" + cntPage + "]";
		}
		
	}
