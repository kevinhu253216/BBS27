<%@ page contentType="text/html;charset=gb18030"%>
<%@page import ="java.sql.*, java.io.*, com.bjsxt.bbs.*, java.util.*" %>
<%

String strId = request.getParameter("id");


System.out.println("ID: "+strId);
if(strId == null || strId.trim().equals("")){
	out.println("Error ID");
	return;
}
int id = 0;
try{
	id = Integer.parseInt(strId);
}catch(NumberFormatException e){
	out.println("Error ID again!");
	return;
}
Article a = null;


Connection conn = DB.getConn();
String sql = "select * from article where id ="+ id;
Statement stmt = DB.createStmt(conn);
ResultSet rs = DB.executeQuery(stmt, sql);
if(rs.next()){
	a = new Article();
	a.initFromRs(rs);
}


DB.close(rs);
DB.close(stmt);
DB.close(conn);

if(a == null){
%>
	�ㄥ�绘�惧�甯�瀛�涓�瀛���!
<% 
	return;
}

%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>Java|Java��陆莽_�������鲁|ChinaJavaWorld录录�玫���鲁 : 鲁玫�搂java�枚�禄���芒拢隆拢隆�没麓贸录���掳茂�娄�禄�� ...</title>
<meta http-equiv="content-type" content="text/html; charset=GBK">
<link rel="stylesheet" type="text/css" href="images/style.css" title="Integrated Styles">
<script language="JavaScript" type="text/javascript" src="images/global.js"></script>
<link rel="alternate" type="application/rss+xml" title="RSS" href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?threadID=744236">
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tbody>
    <tr>
      <td width="140"><a href="http://bbs.chinajavaworld.com/index.jspa"><img src="images/header-left.gif" alt="Java|Java��陆莽_�������鲁|ChinaJavaWorld录录�玫���鲁" border="0"></a></td>
      <td><img src="images/header-stretch.gif" alt="" border="0" height="57" width="100%"></td>
      <td width="1%"><img src="images/header-right.gif" alt="" border="0"></td>
    </tr>
  </tbody>
</table>
<br>
<div id="jive-flatpage">
  <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tbody>
      <tr valign="top">
        <td width="99%"><p class="jive-breadcrumbs"> <a href="http://bbs.chinajavaworld.com/index.jspa">���鲁</a> &#187; <a href="http://bbs.chinajavaworld.com/forumindex.jspa?categoryID=1">ChinaJavaWorld录录�玫���鲁|Java��陆莽_�������鲁</a> &#187; <a href="http://bbs.chinajavaworld.com/category.jspa?categoryID=2">Java 2 Platform, Standard Edition (J2SE)</a> &#187; <a href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20&amp;start=0">Java�茂��*鲁玫录露掳忙</a> </p>
          <p class="jive-page-title"> 涓婚� <%=a.getTitle()%></p></td>
        <td width="1%"><div class="jive-accountbox"></div></td>
      </tr>
    </tbody>
  </table>
  <div class="jive-buttons">
    <table summary="Buttons" border="0" cellpadding="0" cellspacing="0">
      <tbody>
        <tr>
          <td class="jive-icon"><a href="http://bbs.chinajavaworld.com/post%21reply.jspa?threadID=744236"><img src="images/reply-16x16.gif" alt="禄�赂麓卤戮�梅�芒" border="0" height="16" width="16"></a></td>
          <td class="jive-icon-label"><a id="jive-reply-thread" href="reply.jsp?id=<%=a.getId()%>&rootId=<%=a.getRootId()%>">回复本主题</a></td>
        </tr>
      </tbody>
    </table>
  </div>
  <br>
  <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tbody>
      <tr valign="top">
        <td width="99%"><div id="jive-message-holder">
            <div class="jive-message-list">
              <div class="jive-table">
                <div class="jive-messagebox">
                  <table summary="Message" border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                      <tr id="jive-message-780144" class="jive-odd" valign="top">
                        <td class="jive-first" width="1%">
						<!-- 赂枚�����垄碌�table -->
						<table border="0" cellpadding="0" cellspacing="0" width="150">
                            <tbody>
                              <tr>
                                <td><table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tbody>
                                      <tr valign="top">
                                        <td style="padding: 0px;" width="1%"><nobr> <a href="http://bbs.chinajavaworld.com/profile.jspa?userID=215489" title="�碌�眉碌�驴�">�碌�眉碌�驴�</a> </nobr> </td>
                                        <td style="padding: 0px;" width="99%"><img class="jive-status-level-image" src="images/level3.gif" title="��陆莽����" alt="" border="0"><br>
                                        </td>
                                      </tr>
                                    </tbody>
                                  </table>
                                  <img class="jive-avatar" src="images/avatar-display.png" alt="" border="0"> <br>
                                  <br>
                                  <span class="jive-description"> 路垄卤铆:
                                  34 <br>
                                  碌茫�媒: 100<br>
                                  �垄虏谩:
                                  07-5-10 <br>
                                  <a href="http://blog.chinajavaworld.com/u/215489" target="_blank"><font color="red">路�����碌�Blog</font></a> </span> </td>
                              </tr>
                            </tbody>
                          </table>
						  <!--赂枚�����垄table陆谩�酶-->
						  
						  </td>
                        <td class="jive-last" width="99%"><table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tbody>
                              <tr valign="top">
                                <td width="1%"></td>
                                <td width="97%"><span class="jive-subject"> 赂赂�霉</span> </td>
                                <td class="jive-rating-buttons" nowrap="nowrap" width="1%"></td>
                                <td width="1%"><div class="jive-buttons">
                                    <table border="0" cellpadding="0" cellspacing="0">
                                      <tbody>
                                        <tr>
                                          <td>&nbsp;</td>
                                          <td class="jive-icon"><a href="http://bbs.chinajavaworld.com/post%21reply.jspa?messageID=780144" title="禄�赂麓卤戮�梅�芒"><img src="images/reply-16x16.gif" alt="禄�赂麓卤戮�梅�芒" border="0" height="16" width="16"></a> </td>
                                          <td class="jive-icon-label"><a href="http://bbs.chinajavaworld.com/post%21reply.jspa?messageID=780144" title="禄�赂麓卤戮�梅�芒">禄�赂麓</a> </td>
                                        </tr>
                                      </tbody>
                                    </table>
                                  </div></td>
                              </tr>
                              <tr>
                                <td colspan="4" style="border-top: 1px solid rgb(204, 204, 204);"><br>
                                 <%=a.getCont()  %>  <br>
                                  <br>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="4" style="font-size: 9pt;"><img src="images/sigline.gif"><br>
                                  <font color="#568ac2">�搂鲁��貌��驴��茂碌����茅拢卢�赂麓贸录����禄�冒��麓���碌�碌陆驴矛��拢隆</font> <br>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="4" style="border-top: 1px solid rgb(204, 204, 204); font-size: 9pt; table-layout: fixed;"> 隆陇<a href="http://www.bjsxt.com"><font color="#666666">http://www.bjsxt.com</font></a> </td>
                              </tr>
                            </tbody>
                          </table></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class="jive-message-list-footer">
              <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tbody>
                  <tr>
                    <td nowrap="nowrap" width="1%"></td>
                    <td align="center" width="98%"><table border="0" cellpadding="0" cellspacing="0">
                        <tbody>
                          <tr>
                            <td><a href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20"><img src="images/arrow-left-16x16.gif" alt="路碌禄�碌陆�梅�芒��卤铆" border="0" height="16" hspace="6" width="16"></a> </td>
                            <td><a href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20">路碌禄�碌陆�梅�芒��卤铆</a> </td>
                          </tr>
                        </tbody>
                      </table></td>
                    <td nowrap="nowrap" width="1%">&nbsp;</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div></td>
        <td width="1%"></td>
      </tr>
    </tbody>
  </table>
</div>
</body>
</html>
