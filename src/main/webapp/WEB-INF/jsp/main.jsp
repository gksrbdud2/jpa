<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>스프링부트 + JPA 웹서비스</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 	<!--부트스트랩 css 추가-->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
</head>
<body>
    <h1>스프링부트 + JPA 테스트</h1>
    <div class="col-md-12">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#savePostsModal">글 등록</button>
        <br/>
        <br/>
        <!-- 목록 출력 영역 -->
        <table class="table table-horizontal table-bordered">
            <thead class="thead-strong">
                <tr>
                    <th>게시글번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>최종수정일</th>
                </tr>
            </thead>
            <tbody id="tbody">
	            <c:forEach var="posts" items="${posts}">
	                <tr>
	                    <td>${posts.id}</td>
	                    <td>${posts.title}</td>
	                    <td>${posts.author}</td>
	                    <td>${posts.modifiedDate}</td>
	                </tr>
	            </c:forEach>
            </tbody>
        </table>
    </div>
    
    <!-- Modal 영역 -->
    <div class="modal fade" id="savePostsModal" tabindex="-1" role="dialog" aria-labelledby="savePostsLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="savePostsLabel">게시글 등록</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="title">제목</label>
                            <input type="text" class="form-control" id="title" placeholder="제목을 입력하세요">
                        </div>
                        <div class="form-group">
                            <label for="author">작성자</label>
                            <input type="text" class="form-control" id="author" placeholder="작성자를 입력하세요">
                        </div>
                        <div class="form-group">
                            <label for="content">내용</label>
                            <textarea class="form-control" id="content" placeholder="내용을 입력하세요"></textarea>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                    <button type="button" class="btn btn-primary" id="btn-save">등록</button>
                </div>
            </div>
        </div>
    </div>
    
    <!--부트스트랩 js, jquery 추가-->
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    
     <!--custom js 추가-->
    <script src="/js/app/main.js"></script>
</body>
</html>