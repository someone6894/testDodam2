package com.dodam.service.members;

import java.io.IOException;
import java.util.UUID;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.dodam.domain.members.MemberVo;
import com.dodam.persistence.members.MemberDaoImpl;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDaoImpl dao; // dao객체 주입

	public boolean addMember(MemberVo m) {

		boolean result = false;

		if (dao.insertMember(m) == 1) {
			result = true;
		}

		return result;

	}

	@Override
	public boolean sendMail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		boolean result = false;
		System.out.println("email send success");

		String emailAddr = request.getParameter("email");
		System.out.println(" 보낼 이메일 주소 : " + emailAddr);

//		response.setContentType("application/json; charset=utf-8;");
//		PrintWriter out = response.getWriter();

		// 유저한테 이메일로 전송할 컨펌코드
		String confirmCode = UUID.randomUUID().toString();
		
//		Random random = new Random(); // 인증번호 난수
//		int confirmCode = random.nextInt(888888) + 111111;
		
		System.out.println(" 이메일로 전송할 컨펌코드(인증코드) : " + confirmCode);

		HttpSession ses = request.getSession();
		ses.removeAttribute("confirmCode"); // 아래에서 갱신함
		ses.setAttribute("confirmCode", confirmCode);

		// 지메일 서버를 이용해서 메일 보내기
		
		try {
			if(	dao.send(emailAddr, confirmCode) ) {
				result = true;
			}
		} catch (MessagingException e) {
			e.printStackTrace();
			result = false;
		}


		return result;
	}

}
