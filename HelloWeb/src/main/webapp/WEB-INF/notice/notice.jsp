<%@page import="co.dev.vo.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ include file="../includes/sidebar.jsp" %>
    <%@ include file="../includes/top.jsp" %>
    
    <%
    	NoticeVO vo = (NoticeVO) request.getAttribute("noitce");
    	System.out.print(vo);
    	String name = (String) session.getAttribute("name");
    %>
    ${notice }
    	<table class="table">
    		<tr>
    			<td>글번호</td>
    			<td><input type="text" name="nid" value="${notice.noticeId }"></td>
    			<td>조회수 [<b><%=vo.getHitCount() %></b>]</td>
    		</tr>
    		<tr>
    			<td>제목</td>
    			<td colspan=2><input type="text" name="title" value="${notice.noticeTitle }"></td>
    		</tr>
    		<tr>
    			<td>작성자</td>
    			<td colspan=2><input type="text" name="writer" value="${notice.noticeWriter }"></td>
    		</tr>
    		<tr>
    			<td>내용</td>
    			<td colspan=2><textarea cols="30" rows="5" name="subject" >${notice.noticeSubject }</textarea></td>
    		</tr>
    		<tr>
    			<td>파일</td>
    			<td colspan=2>
    				<c:choose>
    					<c:when test="${notice.attach != null }">
    						<input type="file" name="attch" value="${noitce.attach }">
    					</c:when>
    					<c:otherwise>
    						<input type="file" name="attch">
    					</c:otherwise>
    				</c:choose>
    			
    			</td>
    		</tr>
    		<tr>
				<td colspan="3" align="center">
					<button id="modBtn">수정</button>
					<button id="delBtn">삭제</button>
				</td>
    		</tr>
    	</table>
   	<form id="myFrm" action="noticeModify.do">

	</form>
   	<script>
   		document.querySelector('#modBtn').addEventListener('click', function(e) {
   			e.preventDefault(); //기본 기능 차단.
			let myFrm = document.querySelector('#myFrm');
			let nid = document.querySelector('input[name="nid"]').value;
			let title = document.querySelector('input[name="title"]').value;
			let subject = document.querySelector('textarea[name="subject"]').textContent;

			myFrm.append(document.querySelector('input[name="nid"]'));
			myFrm.append(document.querySelector('input[name="title"]'));
			myFrm.append(document.querySelector('textarea[name="subject"]'));
			console.log(myFrm);
			myFrm.submit();
			
			let isOK = true;
			if (id != <%=vo.getNoticeId()%>){
				isOK = false;
			}
			if(!isOK){
				alert('작성자만 수정할 수 있습니다!');
				return false;
			}
			this.submit();

			

		});

		// 삭제.
		document.querySelector('#delBtn').addEventListener('click', function(){
			
			let myFrm = document.querySelector('#myFrm');
			// FrontContrller에 NoticeRemoveControl();
			// 서비스: noticeRemove(int nid), mapper: deleteNotice(int nid);

			myFrm.action = 'noticeRemove.do'; // myFrm.setAttribute('action', 'noticeRemove.do')
			myFrm.append(document.querySelector('input[name="nid"]'));

			myFrm.submit();
		})

   	</script>

    	
    
    <%@ include file="../includes/footer.jsp" %>