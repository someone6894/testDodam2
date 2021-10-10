<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Cache-Control" content="No-Cache">
<meta http-equiv="Pragma" content="No-Cache">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<script>

function removeBoard(no) {
	location.href = '/board/remove?no=' + ${board.no};
}

// 상세페이지에서 수정 버튼을 누루면 게시글 등록페이지와 같은 update 모달창 띄우기
function updateBoard(no) {
	
	location.href = '/board/updateBoard?no=' + ${board.no};
}

// 	$(function(){
// 		// 현재글에 달려있는 모든 댓글을 읽어와서 출력
// 		viewAllReplies();
		
// 		$("#writer").mouseover(function(){
// 			$("#writeInfo").show(300);
// 		});
// 	});
	
// 	function calcDate(regdate) {
// 		let diff = new Date() - regdate // 댓글 단 시간과 현재시간의 차
// 		let diffSecond = diff / 1000; // 초단위
// 		if (diffSecond < 60 * 5) return '방금 전';
// 	 	let diffMinutes = diffSecond / 60; // 분단위
// 	 	if (diffMinutes < 60) return Math.floor(diffMinutes) + '분전';
// 	 	return new Date(regdate).toLocaleString();
// 	}
	
// 	function viewAllReplies() {
// 		let bno = ${param.no};
// 		let url = '/replies/all/' + bno
// 		$.ajax({
// 			url : url, // ajax와 통신 할 곳
// 			dataType : "json", // 수신될 데이터의 타입
// 			type : "get", // 통신 방식
// 			success : function(data) { // 통신 성공시 수행될 콜백 함수
// 				if (data != null) {
// 					console.log(data);
// 					$("#replyLst").empty();
// 					let output = '<ul class="list-group">'; // 보이는 댓글
// 					let secoutput = '';
// 					$.each(data, function(i, e) {
// 						// ----------------------- 비밀글 템플릿 ---------------------------
// 						secoutput += '<li id="reply' + e.no + '" class="list-group-item">';
// 						secoutput += "<div><img src='../resources/images/lock.PNG' width='15px' />" +   
// 						" 댓글 작성자가 비밀글로 처리한 글입니다 </div>";
// 						secoutput += "</li>";
// 						// -------------------------비밀글이 아닌 댓글 템플릿--------------------------------
// 						let viewoutput = '<li id="reply' + e.no + '" class="list-group-item">';
// 						viewoutput += "<div style='float: right; margin-right:10px;'>" + 
// 							"<img src='../resources/images/gear.png' width='25px' onclick='showReplyModify(" + e.no +");' />";
// 						viewoutput += "<img src='../resources/images/trash.png' width='25px' onclick='showReplyDel(" + e.no + ")'/></div></div>";
// 						viewoutput += '<div>작성자 : <span id="replyer' + e.no + '">' + e.replyer + '</span></div>';
// 						viewoutput += '<div id="orcontent' + e.no  + '">내용 : ' + e.contents + '</div>';
						
// 						if (e.modifydate == null) {  // 수정한 댓글이 아니 라면
// 							regdate = calcDate(e.registerdate);
// 						} else {
// 							regdate = calcDate(e.modifydate); 
// 						}
// 						viewoutput += "<div>작성일 : " + regdate + "</div>";
						
// 						// ------------------------------------------------------------------
						
						
// 						let loginUser = '${loginMember.userid}'; // 로그인 유저
// 						let bwriter = '${board.writer}'; // 부모글 작성자
// 						let replyer = e.replyer;  // 댓글 작성자
						
						
// 						if (e.issecret == 'Y') { // 비밀글 이다
// 							if (loginUser == '') { // 로그인 하지 않았다
// 								output += secoutput;
// 							} else { // 비밀글인데 로그인을 한 경우
// 								if (loginUser == bwriter || loginUser == replyer) { // 보이는 조건에 해당
// 									viewoutput += "<div style='color : red;'><img src='../resources/images/lock.PNG' width='15px' />이 글은 비밀글입니다!</div>";
// 									viewoutput += "</li>";
// 									output += viewoutput;
									
// 								} else { // 로그인을 했지만 보이는 조건에 맞지 않는 경우
// 									output += secoutput;
// 								}
// 							}
						
// 						} else { // 비밀 글이 아님	
// 							viewoutput += "</li>";
// 							output += viewoutput;
							
// 						}
						
// 					}); // 반복문 끝
					
// 					output += "</ul>";
					
// 					$("#replyLst").html(output);
// 				}
				
								
// 			},
// 			error : function() { // 통신 실패시 수행될 콜백 함수

// 			}

// 		}); 
		
// 	}
	
// 	function showReplyDel(no) {
// 		$("#replyRemove").insertAfter($("#reply" + no));
// 		$("#replyRemove").show(500);
		
// 		let newHidden = document.createElement("input");
//         newHidden.setAttribute("type", "hidden");
//         newHidden.setAttribute("id", "rno");
//      	document.getElementById("replyRemove").appendChild(newHidden); // 동적으로 태그 객체 삽입
     	
//      	$("#rno").val(no);
// 	}
	
// 	function showReplyModify(no) {
// 		$("#replyModify").insertAfter($("#reply" + no));
// 		$("#replyModify").show(500);
// 		//수정할 댓글의 pk를 replyModify에 동적으로 넣어줌
		
		
// 		let newHidden = document.createElement("input");
//         newHidden.setAttribute("type", "hidden");
//         newHidden.setAttribute("id", "no");
//      	document.getElementById("replyModify").appendChild(newHidden); // 동적으로 태그 객체 삽입
        
// 		$("#no").val(no);
 	
//      	$("#replyContentsModify").val($("#orcontent" + no).html());
     	
     	
// 	}
	
// 	function showReply() {
// 		$("#replyDiv").show(500);
// 	}
	
// 	function addReply() {
// 		let bno = '${param.no}';
// 		bno = parseInt(bno);
// 		let writer = '${loginMember.userid}';
// 		let content = $("#replyContents").val();
// 		let isSecret = 'N';
// 		if (document.getElementById("isSecret").checked) {
// 			isSecret = 'Y';
// 		}
// 		let url = '/replies';
		
// 		let sendData = JSON.stringify({  // json타입의 객체로 보이는 문자열 생성
// 			bno : bno, replyer : writer, contents : content, issecret : isSecret
// 		});
		
// 		console.log(sendData);
		
// 		$.ajax({
// 			url : url, // ajax와 통신 할 곳
// 			data : sendData, // 서블릿에 보낼 데이터
// 			dataType : "text", // 수신될 데이터의 타입
// 			type : "post", // 통신 방식
// 			headers : {
// 				"content-type" : "application/json",
// 				"X-HTTP-Method-Override" : "POST"
// 			},
// 			success : function(data) { // 통신 성공시 수행될 콜백 함수
// 				if (data == "success") {
// 					alert('댓글 등록 완료!');
// 					viewAllReplies();
// 				} else if (data == "fail") {
// 					alert('댓글 등록 실패!\r\n 문제가 지속되면 상현이한테 연락하세요!');
// 				}
								
// 			},
// 			error : function() { // 통신 실패시 수행될 콜백 함수

// 			}

// 		}); 
		
// 	}
	
// 	function closeRemove() {
// 		$("#replyRemove").hide();
// 	}
	
// 	function modifyReply() {
// 		let no = $("#no").val();
// 		let loginUser = '${loginMember.userid}'
// 		if (loginUser == '') {
// 			alert("로그인 하셔야 이용 가능합니다!");
// 			location.href='../member/login';
// 		}
// 		let replyer = $("#replyer" + no).html();
// 		if (loginUser != replyer) {
// 			alert("댓글은 작성자만 수정/삭제 가능합니다");
// 			$("#replyModify").hide();
// 			return;
// 		}
// 		let contents = $("#replyContentsModify").val();
		
// 		let isSecretModify = 'N';
// 		if (document.getElementById("isSecretModify").checked) {
// 			isSecretModify = 'Y';
// 		}
		
// 		let url = '/replies/' + no;
		
// 		let sendData = JSON.stringify({
// 			no : no, replyer : replyer, contents : contents, issecret : isSecretModify
// 		});
		
// 		console.log(sendData);
			
// 		$.ajax({
// 			url : url, // ajax와 통신 할 곳
// 			data : sendData, // 서블릿에 보낼 데이터
// 			dataType : "text", // 수신될 데이터의 타입
// 			type : "put", // 통신 방식
// 			headers : {
// 				"content-type" : "application/json",
// 				"X-HTTP-Method-Override" : "POST"
// 			},
// 			success : function(data) { // 통신 성공시 수행될 콜백 함수
// 				if (data == "success") {
// 					alert('댓글 수정 완료!');
// 					viewAllReplies();
// 				} else if (data == "fail") {
// 					alert('댓글 등록 실패!\r\n 문제가 지속되면 상현이한테 연락하세요!');
// 				}
								
// 			},
// 			error : function() { // 통신 실패시 수행될 콜백 함수

// 			}

// 		}); 
		
	
// 	}
	
// 	function removeReply() {
// 		let no = $("#rno").val();
		
// 		let loginUser = '${loginMember.userid}'
			
// 		let replyer = $("#replyer" + no).html();
// 		if (loginUser != replyer) {
// 			alert("댓글은 작성자만 수정/삭제 가능합니다");
// 			location.href = '../member/login';
// 			$("#replyModify").hide();
// 			return;
// 		}
		
// 		let url = '/replies/' + no;
// 		$.ajax({
// 			url : url, // ajax와 통신 할 곳
// 			dataType : "text", // 수신될 데이터의 타입
// 			type : "delete", // 통신 방식
// 			headers : {
// 				"content-type" : "application/json",
// 				"X-HTTP-Method-Override" : "POST"
// 			},
// 			success : function(data) { // 통신 성공시 수행될 콜백 함수
// 				if (data == "success") {
// 					alert('댓글 삭제 완료!');
// 					viewAllReplies();
// 				} else if (data == "fail") {
// 					alert('댓글 삭제 실패!\r\n 문제가 지속되면 상현이한테 연락하세요!');
// 				}
								
// 			},
// 			error : function() { // 통신 실패시 수행될 콜백 함수

// 			}

// 		});

// 	}
</script>
<style>
#replyDiv {
	boarder: 1px dotted #e1bee7;
	display: none;
	padding: 5px;
}
</style>
<body>
	<%
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Cache-Control", "private, no-store, must-revalidate");
	%>




	<jsp:include page="../template.jsp"></jsp:include>
	<jsp:include page="../adoptboardmini.jsp"></jsp:include>

	<div class="container"
		style="height: 30%; width: 50%; border: 2px gray solid; margin-top: 50px; margin-bottom: 100px; padding: 20px">
		<h2>${board.title }</h2>

		<div class="row">
			<div class="col-sm-4">
				<div class="form-group">
					<label for="adoptkind">품종 </label> <input type="text"
						class="form-control" id="adoptkind" name="adoptkind"
						value="${board.adoptkind }" readonly>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="form-group">
					<label for="gender">성별 </label> <input type="text"
						class="form-control" id="gender" name="gender"
						value="${board.gender }" readonly>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="form-group">
					<label for="liabilityfee">책임비 </label> <input type="text"
						class="form-control" id="liabilityfee" name="liabilityfee"
						value="${board.liabilityfee }" readonly>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="form-group">
					<label for="adoptarea">분양 지역 </label> <input type="text"
						class="form-control" id="adoptarea" name="adoptarea"
						value="${board.adoptarea }" readonly>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="form-group">
					<label for="phone">연락처 </label> <input type="text"
						class="form-control" id="phone" name="phone"
						value="${board.phone }" readonly>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="form-group">
					<label for="sns">SNS </label> <input type="text"
						class="form-control" id="sns" name="sns" value="${board.sns }"
						readonly>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="form-group">
					<label for="writer">작성자 </label> <input type="text"
						class="form-control" id="writer" name="writer"
						value="${board.writer }" readonly><span id="writerError"
						class="error"></span>
				</div>
			</div>

			<div class="col-sm-4">
				<label for="title">글번호:</label> <input type="text"
					class="form-control" id="no" name="no" value="${board.no }"
					readonly> <span id='readcount'>조회수 : <span
					class="badge">${board.readcnt }</span></span> <span id='likeDislike'>
					좋아요 : <span id='isLikeSpan'></span> <span id="likeCount"
					class="badge">${board.bookmark }</span>
				</span>
			</div>

		</div>


		<!-- 		<div class="form-group"> -->
		<!-- 			<label for="title">글번호:</label> <input type="text" -->
		<%-- 				class="form-control" id="no" name="no" value="${board.no }" readonly> --%>
		<!-- 			<div> -->
		<%-- 				<span id='readcount'>조회수 : <span class="badge">${board.readcnt }</span></span> --%>

		<!-- 				<span id='likeDislike'> 좋아요 : <span id='isLikeSpan'></span> <span -->
		<%-- 					id="likeCount" class="badge">${board.bookmark }</span> --%>
		<!-- 				</span> -->
		<!-- 			</div> -->


		<!-- 		</div> -->
		<!-- 		<div class="form-group"> -->
		<!-- 			<label for="title">제목:</label> <input type="text" -->
		<%-- 				class="form-control" id="title" name="title" value="${board.title }" --%>
		<!-- 				readonly> -->
		<!-- 		</div> -->

		<!-- 		<div class="form-group"> -->
		<!-- 			<label for="writer">작성자 :</label> <input type="text" -->
		<!-- 				class="form-control" id="writer" name="writer" -->
		<%-- 				value="${board.writer}" readonly> --%>
		<!-- 				<div id="writeInfo" style="display: none;"> -->
		<%-- 					<div><a href="listAll?page=1&searchType=writer&searchWord=${board.writer }">작성자 글보기</a></div> --%>
		<!-- 					<div>쪽지보내기</div> -->
		<!-- 				</div> -->
		<!-- 		</div> -->

		<br>
		<div class="form-group">
			<label for="contents">내용 :</label>
			<div>${board.contents }</div>
			<br>

			<c:choose>
				<c:when test="${board.image == '' }">
				</c:when>
				<c:when test="${board.image != null }">
					<img src="../resources/${board.image }" width="500px"
						height="500px" />
				</c:when>
				<c:when test="${board.notimage != null }">
					<a href='../resources/${board.notimage }'>${board.notimage }</a>
				</c:when>

			</c:choose>

		</div>

		<!-- 게시글 쓴 사람 == 접속한 id 일때 글 수정삭제 권한주기 -->
		<c:if test="${board.writer == loginMember.userid }">
			<button type="button" class="btn btn-success">수정</button>
			<button type="button" class="btn btn-warning"
				onclick="/board/remove?no=${board.no}">삭제</button>
		</c:if>

		<!-- 게시글 누구나 수정 삭제 권한 갖음 test용 -->
		<button type="button" class="btn btn-success"
			onclick="updateBoard(${board.no});">수정</button>
		<button type="button" class="btn btn-success" data-toggle="modal"
				data-target="#myModal2">글 수정테스트</button>
		<button type="button" class="btn btn-warning"
			onclick="removeBoard(${board.no});">삭제</button>





		<!-- 상세페이지에서 목록으로.. -->
		<button type="button" class="btn btn-info" style="float: right;"
			onclick="location.href='/board/listAll?pageNo=1'">목록으로</button>

		<!-- 상세페이지 수정용 업데이트 모달창 -->
		<!-- Modal -->
		<div class="modal fade" id="myModal2" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-body" style="height: 100%;">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<jsp:include page="updateBoard.jsp"></jsp:include>
					</div>
				</div>

			</div>
		</div>












		<!-- 댓글처리 -->
		<c:if test="${loginMember.userid != null }">
			<button type="button" class="btn btn-danger" onclick="showReply();">댓글달기</button>
		</c:if>


		<div id="replyDiv" style="clear: both;">
			<div class="form-group">
				<div class="checkbox">
					<label><input type="checkbox" id="isSecret">비밀글로 등록</label>
				</div>
				<label for="replyContents">댓글 내용:</label>
				<textarea id="replyContents" rows="6" cols="150"></textarea>
				<button type="button" class="btn btn-danger" onclick="addReply();">댓글등록</button>
			</div>
		</div>

		<div id="replyLst"></div>

		<div id="replyModify" style="display: none;">
			<div>댓글 수정</div>
			<div class="form-group">
				<div class="checkbox">
					<label><input type="checkbox" id="isSecretModify">비밀글로
						등록</label>
				</div>
				<label for="replyContents">댓글 내용:</label>
				<textarea id="replyContentsModify" rows="6" cols="150"></textarea>
				<button type="button" class="btn btn-danger"
					onclick="modifyReply();">댓글수정</button>
			</div>
		</div>

		<div id="replyRemove" style="display: none;">
			<div>댓글 삭제</div>
			<div class="form-group">
				정말로 진심으로 진짜로 삭제 할까요? (삭제된 댓글은 복구가 불가능 합니다!)
				<button type="button" class="btn btn-info" onclick="closeRemove();">취소</button>
				<button type="button" class="btn btn-danger"
					onclick="removeReply();">댓글삭제</button>
			</div>
		</div>
	</div>
	<!-- 댓글처리끝 -->

</body>
</html>