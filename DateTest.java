package practice7;

import java.time.LocalDate;
import java.time.Year;
import java.util.Calendar;
import java.util.Scanner;

public class DateTest {
	public static void main(String[] args) {
		// 우선 기존의 년 월 일을 가지고 온다.
		int nowYear = Calendar.getInstance().get(Calendar.YEAR);
		int nowMonth = Calendar.getInstance().get(Calendar.MONTH)+1;
		int nowDay = Calendar.getInstance().get(Calendar.DAY_OF_MONTH);
		int Man = 0;
		int[] now = {nowYear,nowMonth,nowDay}; // 현재 날짜 년 월 일 별로 추출
		
		Scanner scan = new Scanner(System.in);
		while(true) {
		System.out.println("출생한 년도를 입력하세요>>>");
		int year = scan.nextInt();
		System.out.println("출생한 월을 입력하세요>>>");
		int month = scan.nextInt();
		System.out.println("출생한 일을 입력하세요>>>");
		int day = scan.nextInt();
		if(year>nowYear || month>12 || day>32) {
			// 우선 범위 밖 숫자 먼저 제한 --> 그 다음에 현재 날짜보다 더 지난 날짜를 입력할 때 rollback
			System.out.println("잘못된 숫자를 입력하였습니다. 재 입력하세요.");
			continue;
			}else if(year == nowYear && day > nowDay && month >= nowMonth ) {
				System.out.println("현재 날짜보다 더 큰 날짜를 입력하였습니다.");
				continue;
			} //순서 주의 일이 크더라도 월이 작으면 넘어간다.
		
		int[] person = {year,month,day};
		Man = Operate(now,person);
		if(Man != 0)break;
		}
		System.out.println("만 나이 : "+Man);
	}
	public static int Operate(int[] now , int[] person) { 
		// 변수 = 현재 날짜 데이터 int 형 배열과 입력한 사람의 출생년도 데이터 int 형 배열을 받는다.
		// 만나이는 월과 일이 일치할 때 비로소 만 나이에 + 1 를 해준다. 즉 현재 월과 일이 출생 월과 일과 일치하면 +1
			int man = 0;
			if(now[1] >= person[1] && now[2] >= person[2]) {
				man = now[0]-person[0] -1;
			}else {
				man = now[0]-person[0] -2;
			}
		return man;
	}
}