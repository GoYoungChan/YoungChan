<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Heaven Bookstore</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/getBook.min.css">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script src='main.js'></script>
</head>
<style>
    html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline}article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block}ol,ul{list-style:none}blockquote,q{quotes:none}blockquote:before,blockquote:after,q:before,q:after{content:'';content:none}table{border-collapse:collapse;border-spacing:0}input{border:none;outline:none}address,em{font-style:normal}a{color:inherit;text-decoration:none;outline:none}a:hover,a:active{text-decoration:none;color:inherit}iframe{overflow:hidden;margin:0;padding:0;border:0}button{border:0 none;background-color:transparent;cursor:pointer}*,*:after,*:before{-webkit-box-sizing:border-box;box-sizing:border-box}.hidden{width:1px;height:1px;overflow:hidden;position:absolute;left:-9999px}.ol{outline:1px solid #f00}.clearFix:after,.fList:after{content:'';display:block;clear:both}html{font-size:12pt}body{line-height:1.5;color:#333;font-family:"Noto Sans KR","Noto Sans","돋움",sans-serif;overflow-x:hidden}.wrapper{max-width:1220px;width:1220px;margin:auto}.wrapper .header{width:100%;height:auto}.wrapper .header .header_top{width:100%;height:30px;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:end;-ms-flex-pack:end;justify-content:flex-end;margin-bottom:10px}.wrapper .header .header_top .util{display:-webkit-box;display:-ms-flexbox;display:flex;width:100%}.wrapper .header .header_top .util>li{margin:0 5px;position:relative;margin-right:10px;-webkit-transition:all 0.25s ease-out;transition:all 0.25s ease-out}.wrapper .header .header_top .util>li:first-child{-webkit-box-flex:1;-ms-flex:1;flex:1;text-align:left;color:#BDBDBD}.wrapper .header .header_top .util>li:last-child{margin-right:0}.wrapper .header .header_top .util>li:hover{color:#3E7C17;text-decoration:underline}.wrapper .header .header_middle{display:-webkit-box;display:-ms-flexbox;display:flex;padding:0 20px;margin-bottom:25px}.wrapper .header .header_middle .logo{width:180px;height:50px}.wrapper .header .header_middle .search{-webkit-box-flex:1;-ms-flex:1;flex:1;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}.wrapper .header .header_middle .search .search_box{width:455px;height:50px;border:3px solid #3E7C17;border-radius:30px;color:#3E7C17;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center}.wrapper .header .header_middle .search .search_box .search_form{width:100%;display:-webkit-box;display:-ms-flexbox;display:flex;padding:0 15px}.wrapper .header .header_middle .search .search_box .search_form .search_list{width:70px;margin-right:10px;color:#3E7C17;font-weight:500;text-align:center;background-color:transparent;border:none;outline:none}.wrapper .header .header_middle .search .search_box .search_form .search_list>option{background-color:#fff;color:#3E7C17}.wrapper .header .header_middle .search .search_box .search_form .search_input{-webkit-box-flex:1;-ms-flex:1;flex:1;border:none;outline:none}.wrapper .header .header_middle .search .search_box .search_form .search_btn>i{font-size:20px;font-weight:900;color:#3E7C17}.wrapper .header .header_middle .empty{width:180px}.wrapper .header .header_bottom .gnb .gnb_list{display:-webkit-box;display:-ms-flexbox;display:flex;-ms-flex-pack:distribute;justify-content:space-around}.wrapper .header .header_bottom .gnb .gnb_list>li{width:calc(100% / 7);text-align:center}.wrapper .header .header_bottom .gnb .gnb_list>li .depth01{display:block;width:100%;background-color:#3E7C17;color:#fff;padding:10px 20px}.wrapper .header .header_bottom .gnb .gnb_list>li .depth02{display:none;padding:10px 20px;background-color:#E8E1D9}.wrapper .header .header_bottom .gnb .gnb_list>li .depth02>li>a{padding:5px 10px;display:block}.wrapper .content_wrap .content_inner .book_info_container{width:100%;margin-top:20px}.wrapper .content_wrap .content_inner .book_info_container .book_info_form{width:100%}.wrapper .content_wrap .content_inner .book_info_container .book_info_form .info_top{display:-webkit-box;display:-ms-flexbox;display:flex}.wrapper .content_wrap .content_inner .book_info_container .book_info_form .info_top .book_info_left{width:400px}.wrapper .content_wrap .content_inner .book_info_container .book_info_form .info_top .book_info_left .book_img_con{width:100%;height:400px;padding:50px;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;-ms-flex-line-pack:center;align-content:center}.wrapper .content_wrap .content_inner .book_info_container .book_info_form .info_top .book_info_left .book_img_con>img{width:250px;height:300px;-o-object-fit:contain;object-fit:contain;border:1px solid #d9d9d9}.wrapper .content_wrap .content_inner .book_info_container .book_info_form .info_top .book_info_right{-webkit-box-flex:1;-ms-flex:1;flex:1;padding:50px;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column}.wrapper .content_wrap .content_inner .book_info_container .book_info_form .info_top .book_info_right .book_title{font-size:20pt;font-weight:500;margin-bottom:10px}.wrapper .content_wrap .content_inner .book_info_container .book_info_form .info_top .book_info_right .info_ul{display:-webkit-box;display:-ms-flexbox;display:flex;margin-bottom:20px;color:#d9d9d9}.wrapper .content_wrap .content_inner .book_info_container .book_info_form .info_top .book_info_right .info_ul>li{margin-right:10px;position:relative}.wrapper .content_wrap .content_inner .book_info_container .book_info_form .info_top .book_info_right .info_ul>li::after{content:'';position:absolute;top:50%;right:-5px;-webkit-transform:translate(0, -50%);transform:translate(0, -50%);height:10px;width:2px;background-color:#d9d9d9}.wrapper .content_wrap .content_inner .book_info_container .book_info_form .info_top .book_info_right .info_ul>li:last-child::after{background-color:transparent}.wrapper .content_wrap .content_inner .book_info_container .book_info_form .info_top .book_info_right .info_content{display:block;width:720px;height:160px}.wrapper .content_wrap .content_inner .book_info_container .book_info_form .info_top .book_info_right .info_content>p{width:100%;height:100%;word-break:normal;word-wrap:break-word}.wrapper .content_wrap .content_inner .book_info_container .book_info_form .info_top .book_info_right .info_price{font-size:20pt;color:#3E7C17;font-weight:500}.wrapper .content_wrap .content_inner .book_info_container .book_info_form .info_bottom{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;-ms-flex-line-pack:center;align-content:center;background-color:#E8E1D9;padding:5px 0}.wrapper .content_wrap .content_inner .book_info_container .book_info_form .info_bottom .order_cnt>select{font-size:15px}.wrapper .content_wrap .content_inner .book_info_container .book_info_form .info_bottom .order_cnt>select>option{font-size:15px}.wrapper .content_wrap .content_inner .book_control_btn{width:100%;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;margin:10px 0;background-color:#E8E1D9;padding:5px 0}.wrapper .content_wrap .content_inner .book_control_btn>a{margin-right:10px}.wrapper .content_wrap .content_inner .book_control_btn>a:last-child{margin-right:0}.wrapper .content_wrap .content_inner .review_container{padding:20px 0}.wrapper .content_wrap .content_inner .review_container .write_review{padding:20px 20px;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column;border-bottom:3px solid #E8E1D9}.wrapper .content_wrap .content_inner .review_container .write_review .review_box_top{width:100%;padding-bottom:10px}.wrapper .content_wrap .content_inner .review_container .write_review .review_box_top>label{border-bottom:1px solid #333;padding:2px 10px}.wrapper .content_wrap .content_inner .review_container .write_review .review_box_top>label>input{width:100px}.wrapper .content_wrap .content_inner .review_container .write_review .review_box_top>select{font-size:15px;color:#3E7C17}.wrapper .content_wrap .content_inner .review_container .write_review .review_box_top>select>option{font-size:15px;color:#3E7C17}.wrapper .content_wrap .content_inner .review_container .write_review .review_box_bottom{display:-webkit-box;display:-ms-flexbox;display:flex}.wrapper .content_wrap .content_inner .review_container .write_review .review_box_bottom>textarea{-webkit-box-flex:1;-ms-flex:1;flex:1;width:100%;height:100px;padding:5px;resize:none;margin-right:10px}.wrapper .content_wrap .content_inner .review_container .write_review .review_box_bottom .review_submit{padding:5px 10px;height:30px;border-radius:10px;background-color:#E8E1D9}.wrapper .content_wrap .content_inner .review_container .show_review{padding:20px 20px;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column;border-bottom:2px solid #E8E1D9;margin-bottom:20px}.wrapper .content_wrap .content_inner .review_container .show_review .review_box_top{display:-webkit-box;display:-ms-flexbox;display:flex;font-weight:500;margin-bottom:10px}.wrapper .content_wrap .content_inner .review_container .show_review .review_box_top .score_review{margin-left:10px;color:#3E7C17}.wrapper .content_wrap .content_inner .review_container .show_review .review_box_top .review_date{-webkit-box-flex:1;-ms-flex:1;flex:1;text-align:right;margin-right:10px}.wrapper .content_wrap .content_inner .review_container .show_review .review_box_bottom{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;-ms-flex-line-pack:center;align-content:center}.wrapper .content_wrap .content_inner .review_container .show_review .review_box_bottom>p{-webkit-box-flex:1;-ms-flex:1;flex:1;width:100%;word-break:normal;word-wrap:break-word;padding:0 10px}.wrapper .footer{width:100%;padding:20px 20px;min-height:150px;height:150px;background-color:#E8E1D9;display:-webkit-box;display:-ms-flexbox;display:flex}.wrapper .footer .footer_left{display:-webkit-box;display:-ms-flexbox;display:flex;height:100%;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column;-ms-flex-line-pack:justify;align-content:space-between;-webkit-box-pack:justify;-ms-flex-pack:justify;justify-content:space-between;-webkit-box-flex:1;-ms-flex:1;flex:1}.wrapper .footer .footer_left>p{font-weight:500}.wrapper .footer .footer_left span{font-size:12px}.wrapper .footer .footer_right{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;-ms-flex-line-pack:center;align-content:center;height:100%}.wrapper .footer .footer_right>img{-o-object-fit:contain;object-fit:contain}

</style>
<body>
    <div class="wrapper">
        <%@ include file="/WEB-INF/views/include/header.jsp" %>
        <article class="content_wrap">
            <div class="content_inner">
                <div class="book_info_container">
                    <form action="insertBasket.ba" method="post" class="book_info_form">
                        <input name="bookNum" type="hidden" value="${book.bookNum}">
                        <input name = "basketBookFile" type="hidden" value= "${book.bookFile }"/>
                        <div class="info_top">
                            <div class="book_info_left">
                                <!-- <div><img src="./bookUpload/${book.bookFile}" alt=""></div> -->
                                <div class="book_img_con"><img src="./bookUpload/${book.bookFile}" alt=""></div>
                            </div>
                            <div class="book_info_right">
                                <h2 class="book_title">${book.bookTitle}</h2><input type="hidden" name="basketBookTitle" value="${book.bookTitle}"/>
                                <ul class="info_ul">
                                    <li><span>${book.bookWriter} 지음</span><input type="hidden" name="basketBookWriter" value="${book.bookWriter}"/></li>
                                    <li><span>${book.bookPublisher}</span></li>
                                    <li><span>${book.bookGenre}</span></li>
                                    <li><span>${book.bookDate}</span></li>
                                </ul>
                                <div class="info_content">
                                    <p>${book.bookContent}</p>
                                    <input type="hidden" name="bookContent" value="${book.bookContent}">
                                </div>
                                <span class="info_price">
                                <fmt:formatNumber value="${book.bookPrice}" pattern="###,###,###"/>
                                    
                                    <input name ="basketBookPrice" type="hidden" value= "${book.bookPrice }"/>
                                </span>
                            </div>
                        </div>
                        <div class="info_bottom">
                            
                            <div class="order_cnt">
                                <span>주문수량 : </span>
                                <select name="basketBookAmount">
                                    <c:forEach begin="1" end = "5" var="i">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="book_btn">
                                <button type="submit">장바구니</button>
                                <button type="button">바로구매</button>
                            </div>
                        </div>
                    </form>
                </div>
                <c:choose>
                    <c:when test="${param.user == 'admin'}">
                        <div class="book_control_btn">
                            <a href="insertBook.bs">글등록</a>
                            <a href="updateBook.bs?bookNum=${book.bookNum}" method="get">글수정</a>
                            <a href="deleteBook.bs?bookNum=${ book.bookNum }">글삭제</a>
                            <a href="getBookList.bs?user=admin">글목록</a>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="book_control_btn">
                            <a href="getBookList.bs?user=user">글목록</a>
                        </div>
                        <div class="review_container">
                            <div class="write_review">
                                <form action="insertReview.br" method="post">
                                    <input name="bookNum" type="hidden" value="${book.bookNum}"/>
                                    <div class="review_box_top">
                                        <label for="name"><span>작성자 : </span><input id="name" type="text" name="reviewName"></label>
                                        <select name="reviewScore" id="">
                                            <c:forEach begin="1" end = "5" var="i">
                                                <option value="${i}">
                                                    <c:forEach begin="1" end="${i}">
                                                        <span>★</span>
                                                    </c:forEach></option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="review_box_bottom">
                                        <textarea name="reviewContent" id="" cols="30" rows="10"></textarea>
                                        <button type="submit" class="review_submit">등록</button>
                                    </div>
                                </form>
                            </div>
                            <c:forEach items="${reviewList}" var="reviewList">
                                <div class="show_review">
                                    <input name="bookNum" type="hidden" value="${reviewList.reviewNum}" />
                                    <input name="bookNum" type="hidden" value="${reviewList.bookNum}" />
                                    <div class="review_box_top">
                                        <label for="name"><span>작성자 : ${reviewList.reviewName}</span></label>
                                        <c:forEach begin="1" end="${reviewList.reviewScore}">
                                            <span class="score_review">★</span>
                                        </c:forEach>
                                        <span class="review_date">${reviewList.reviewDate}</span>
                                        <a href="deleteReview.br?bookNum=${reviewList.bookNum}&reviewNum=${reviewList.reviewNum}"><i class="xi-trash"></i></a>
                                    </div>
                                    <div class="review_box_bottom">
                                        <p class="review_content">${reviewList.reviewContent}</p>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
        </article>
        <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    </div>
</body>
</html>
