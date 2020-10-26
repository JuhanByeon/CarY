<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="/top" />
<style>
        .top-margin {
            margin-top: 40px;
        }

        .button_box {
            width: 100%;
        }

        .qa_btn_box {
            margin: 12px 0;
        }

        a {
            color: inherit;
        }

        .table_tit {
            width: 100%;
        }

        button:hover {
            color: #fff;
        }

        .table_list>.tbody .table_tit:hover {
            text-decoration: underline;
        }


        .table_list_paging_wrap .paging {
            text-align: center;
            font-size: 0;
        }

        .table_list_paging_wrap .paging a {
            display: inline-block;
            margin-left: 10px;
            padding: 5px 10px;
            font-size: 12px;
        }

        .table_list_paging_wrap .paging a:first-child {
            margin-left: 0;
        }

        .table_list_paging_wrap .paging a.num {
            border: 1px solid #e66b27;
            font-weight: 600;
            color: #e66b27;
        }

        .table_list_paging_wrap .paging a.num.on {
            background: #e66b27;
            color: #fff;
        }

        @media all and (max-width:767px) {
            .thead {
                display: none;
            }

            .table_num {
                display: none;
            }

            hr.table_divider {
                width: 100%;
                border-bottom: 1px solid #ededed;
                height: 1px;
            }

            hr.table_list {
                width: 100%;
                background: #e66b27;
                height: 2px;
            }

            h2.tit {
                font-size: 28px;
                float: left;
            }

            .header_tit {
                margin: 8px 0;
            }

            .qa_btn {
                float: right;
                font-size: 12px;
                /* margin-top: 4px !important; */
                background: #2f3640;
                border: 1px solid black;
                border: none;
                color: #fff;
                padding: 4px 8px;
            }

            hr.table_divider {
                border-bottom: 1px solid #ededed;
            }

            .table_writer,
            .table_date {
                float: left;
                display: block;
                font-size: 12px;
                margin-right: 8px;
            }

            .table_list .tbody>div {
                padding-left: 8px;
            }

            .table_tit {
                padding-top: 12px;
                padding-bottom: 8px;
            }

            .table_date,
            .table_writer {
                padding-bottom: 12px;
            }

            .table_list_paging_wrap {
                margin-top: 14px;
            }
        }

        @media all and (min-width:768px) {
            .top-margin {
                margin-top: 80px;
            }

            hr.table_list {
                display: none;
            }

            hr.table_divider {
                display: none;
            }

            .table_list_paging_wrap {
                margin-top: 18px;
            }

            h2.tit {
                font-size: 36px;
                float: left;
            }

            .header_tit {
                margin: 12px 0;
            }

            .qa_btn_box {
                margin-top: 8px;
            }

            .qa_btn {
                float: right;
                font-size: 14px;
                /* margin-top: 24px; */
                background: #2f3640;
                border: 1px solid black;
                border: none;
                color: #fff;
                padding: 6px 14px;
            }

            a {
                text-decoration: none;
                color: inherit;
            }

            .table_list {
                width: 100%;
                border-top: 2px solid #e66b27;
            }

            .thead,
            .tbody {
                width: 100%;
                display: block;
            }

            .table_list .thead>div,
            .table_list .tbody>div {
                text-align: center;
                padding: 12px 10px;
                box-sizing: border-box;
            }

            .table_list {
                width: 100%;
                margin-bottom: 36px;
            }

            .table_num,
            .table_writer {
                width: 10%;
            }

            .table_date {
                width: 20%;
            }

            .table_tit {
                width: 60%;
            }

            .table_tit a {
                text-align: left;
                display: block;
            }

            .table_list div>div {
                border-bottom: 1px solid #ededed;
                /* display: inline-block; */
                float: left;
            }
        }

    </style>
    <div class="top-margin"></div>
    <section class="container">
            <div class="header_tit cfixed">
                <h2 class="tit">게시글 보기</h2>
            </div>
            <div class="table_list_wrap">
                <hr class="table_list">
                <div class="table_list">
                    <div class="thead cfixed">
                        <div class="table_num">번호</div>
                        <div class="table_tit">제목</div>
                        <div class="table_writer">글쓴이</div>
                        <div class="table_date">작성일</div>
                    </div>				
					
                    <div class="tbody cfixed">
                        <div class="table_num">${cs.cs_idx}</div>
                        <div class="table_tit"> 
                        <span style="font-weight:bold">${cs.cs_tit}</span> 
                        </div>
                        <div class="table_writer">${cs.cs_writer}</div>
                        <div class="table_date">
                        ${cs.cs_date}
                        </div>
                        <hr class="table_divider">
                    </div>
                    
                    <div class="tbody cfixed" style="margin-top: 36px; padding:0 5% 36px; box-sizing: border-box;
                    border-bottom: 1px solid #ededed;">
                        <p>${cs.cs_content}</p>                        
                    </div>
                  
                </div>
            </div>
            <div class="cfixed qa_btn_box">
                <a href="cshome.do" class="qa_btn">나가기</a>
                <a href="#" class="qa_btn" style="background: #ededed; color:#2f3640 " onclick="clickEdit()">글수정</a>
            	<a href="#" onclick="clickDelete()" class="qa_btn">삭제</a>
            </div>
            
    </section>
    
     <form method="post" action="csedit">
   		<input name="cs_idx" type="hidden" id="cs_idx"> 
     </form> 
     
    <script>
		function clickDelete(){
			$("#cs_idx").parent().prop('action','user/csdelete');
			$("#cs_idx").prop('name','cs_idx');
			$("#cs_idx").val(${cs.cs_idx});	
			$("#cs_idx").parent().submit();		
		}

 		function clickEdit(){
   	 		$("#cs_idx").val($(".tbody").children(".table_num").text())
    		//($(".tbody").children(".table_num").text())
    		$("#cs_idx").parent().submit()    		
    	}
   	 
    	
    </script>

   <c:import url="/foot" />