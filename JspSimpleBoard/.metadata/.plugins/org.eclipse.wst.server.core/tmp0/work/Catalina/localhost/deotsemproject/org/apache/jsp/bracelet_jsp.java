/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.71
 * Generated at: 2023-03-13 13:06:53 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.PrintWriter;
import uprode.Uprode;
import java.util.ArrayList;
import uprode.UprodeDAO;

public final class bracelet_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.io.PrintWriter");
    _jspx_imports_classes.add("uprode.Uprode");
    _jspx_imports_classes.add("uprode.UprodeDAO");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
 request.setCharacterEncoding("utf-8");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("    <title>DEOTSEM ACC</title>\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css\">\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/reset.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/header.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/footer.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/aos.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/shopbrand.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/common.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/loginform.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/notice.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/reset.css\">\r\n");
      out.write("\r\n");
      out.write("    <script type=\"text/javascript\" src=\"js/jquery.min.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"js/return.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"js/jq.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"js/aos.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"js/jquery.fullPage.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"js/rightbanner.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"js/fbevents.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"js/scrolloverflow.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"js/slider.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <script type=\"text/javascript\" src=\"js/header.1.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"js/main.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"js/footer.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write(" <div id=\"wrap\">\r\n");
      out.write("\r\n");
      out.write("        <span id='solutiontype' style='display:none;'>SHOP</span>\r\n");
      out.write("        <span id='sfsnapfit_store_id' style='display:none'>DEOTSEM</span>\r\n");
      out.write("        <div><input id=\"sf_draw_type\" type=\"hidden\" value=\"pc\">\r\n");
      out.write("            <input id=\"sf_store_name\" type='hidden' value='DEOTSEM'>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <aside id=\"asideMenu\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"close\">\r\n");
      out.write("                <span id=\"asideClose\" class=\"mos05\" onclick=\"closeNav()\">\r\n");
      out.write("                    <i class=\"xi-close-thin\" alt=\"메뉴\"></i>\r\n");
      out.write("                </span>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"logo\">\r\n");
      out.write("                <img src=\"images/logo.png\" alt=\"로고이미지\">\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <!-- 로그인영역 -->\r\n");
      out.write("            <div class=\"loginBox\">\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"login.jsp\">LOGIN</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"join\">\r\n");
      out.write("                        <a href=\"join.jsp\">JOIN US</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"admin_mypage.jsp\">MYPAGE</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"navCategory\">\r\n");
      out.write("                <nav>\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <!-- 퀵메뉴 노출개수 -->\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"index.jsp\">DEOTSEM</a>\r\n");
      out.write("                            <span class=\"xi xi-angle-down-min\"></span>\r\n");
      out.write("\r\n");
      out.write("                            <ul>\r\n");
      out.write("                                <li>\r\n");
      out.write("                                    <a href=\"about.jsp\">ABOUT</a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li>\r\n");
      out.write("                                    <a href=\"notice_list.jsp\">NOTICE</a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li>\r\n");
      out.write("                                    <a href=\"qna_list.jsp\">Q&A</a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li>\r\n");
      out.write("                                    <a href=\"review_list.jsp\">REVIEW</a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </li>\r\n");
      out.write("\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"made.jsp\">[D]MADE</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"all.jsp\">ALL</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"new.jsp\">NEW</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("\r\n");
      out.write("                       <li>\r\n");
      out.write("                        <a href=\"ring.jsp?category=RING\">RING</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"earring.jsp?category=EARRING\">EARRING</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"neck.jsp?category=NECKLACE\">NECKLACE</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"bracelet.jsp?category=BRACELET\">BRACELET</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"acc.jsp?category=ACC\">ACC</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        <script>\r\n");
      out.write("                            jQuery(\"aside nav .xi\").click(function () {\r\n");
      out.write("                                jQuery(this).parent().siblings().children(\"ul\").hide();\r\n");
      out.write("                                jQuery(this).parent().siblings().children(\".xi-angle-down-min\").removeClass(\"fa-rotate-180\");\r\n");
      out.write("                                jQuery(this).next(\"ul\").toggle();\r\n");
      out.write("\r\n");
      out.write("                                if (jQuery(this).text() == \"+\") {\r\n");
      out.write("                                    jQuery(this).text(\"-\");\r\n");
      out.write("                                } else if (jQuery(this).text() == \"-\") {\r\n");
      out.write("                                    jQuery(this).text(\"+\");\r\n");
      out.write("                                } else {\r\n");
      out.write("                                    jQuery(this).toggleClass(\"fa-rotate-180\");\r\n");
      out.write("                                }\r\n");
      out.write("                                return false\r\n");
      out.write("                            });\r\n");
      out.write("                        </script>\r\n");
      out.write("                         <!-- 모바일 버전 메뉴 -->\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("        </aside>\r\n");
      out.write("        <!-- //사이드 메뉴 - 끝 -->\r\n");
      out.write("\r\n");
      out.write("        <div id=\"header2\">\r\n");
      out.write("            <!-- 로고영역 -->\r\n");
      out.write("            <div class=\"logo\">\r\n");
      out.write("                <a href=\"index.jsp\">\r\n");
      out.write("                    <img src=\"images/biglogo.png\" alt=\"로고이미지\">\r\n");
      out.write("                </a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- 메뉴버튼 -->\r\n");
      out.write("            <p class=\"category\" onclick=\"openNav()\"><a><span></span></a></p>\r\n");
      out.write("            <!-- 장바구니 -->\r\n");
      out.write("            <p class=\"cart\">\r\n");
      out.write("                <a href=\"cart.jsp\">\r\n");
      out.write("                    <span class=\"css-cart\"></span>\r\n");
      out.write("                    <span class=\"count1\">\r\n");
      out.write("                        <span id=\"user_basket_quantity\" class=\"user_basket_quantity\"></span>\r\n");
      out.write("                    </span>\r\n");
      out.write("                </a>\r\n");
      out.write("            </p>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- //header2 -->\r\n");
      out.write("\r\n");
      out.write("        <!-- ─────────────────────────────────────────────────────────── -->\r\n");
      out.write("\r\n");
      out.write("        <div id=\"header\" class=\"box\">\r\n");
      out.write("            <div class=\"headerTnb mos03\">\r\n");
      out.write("                <div class=\"tnbRight\">\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li class=\"join\">\r\n");
      out.write("                            <a href=\"join.jsp\">JOIN</a>\r\n");
      out.write("                            <div class=\"pointBox\">\r\n");
      out.write("                                <i class=\"xi-caret-up-min\"></i>\r\n");
      out.write("                                <span>2,000 P</span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"login.jsp\">LOGIN</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("\r\n");
      out.write("                        <li><a href=\"admin_mypage.jsp\">MYPAGE</a></li>\r\n");
      out.write("\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"cart.jsp\">CART\r\n");
      out.write("                                <span class=\"count\">\r\n");
      out.write("                                    (<span id=\"user_basket_quantity\" class=\"user_basket_quantity\"></span>)\r\n");
      out.write("                                </span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("\r\n");
      out.write("                        <li><a href=\"order.jsp\">ORDER</a></li>\r\n");
      out.write("                        <li><a href=\"#\">SEARCH</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div id=\"ser_mask\" class=\"mos05\"></div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"headerTop mos03\">\r\n");
      out.write("                <h1 class=\"tlogo\">\r\n");
      out.write("                    <a href=\"index.jsp\">\r\n");
      out.write("                        <img src=\"images/logo.png\" alt=\"로고이미지\">\r\n");
      out.write("                    </a>\r\n");
      out.write("                </h1>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"headerGnb mos03\">\r\n");
      out.write("                <ul class=\"category upper\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"index.jsp\">DEOTSEM</a>\r\n");
      out.write("                        <div class=\"sub-ct -ly1\">\r\n");
      out.write("                            <ul>\r\n");
      out.write("                                <li>\r\n");
      out.write("                                    <a href=\"about.jsp\">ABOUT</a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li>\r\n");
      out.write("                                    <a href=\"notice_list.jsp\">NOTICE</a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li>\r\n");
      out.write("                                    <a href=\"qna_list.jsp\">Q&A</a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li>\r\n");
      out.write("                                    <a href=\"review_list.jsp\">REVIEW</a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"made.jsp\">[D]MADE</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"all.jsp\">ALL</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"new.jsp\">NEW</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"ring.jsp?category=RING\">RING</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"earring.jsp?category=EARRING\">EARRING</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"neck.jsp?category=NECKLACE\">NECKLACE</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"bracelet.jsp?category=BRACELET\">BRACELET</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"acc.jsp?category=ACC\">ACC</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("                        ");
   
                    
                    int pageNumber =1; //기본페이지 1페이지
                    if (request.getParameter("pageNumber") != null) {
                   	 pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
                    }
             
                    
                    int total = 0;
                   
                    
                    String category = null;
                    if (request.getParameter("category") != null){
                    	category = request.getParameter("category");
                    }
                    
                    if ( category == null ) {
                		PrintWriter script = response.getWriter();
                		script.println("<script>");
                		script.println("alert('유효하지 않은 상품입니다.')");
                		script.println("history.back()");
                		script.println("</script>");
                    }
                    
                    UprodeDAO uprodeDAO = new UprodeDAO();
                    ArrayList<Uprode> list = uprodeDAO.getcategory(category);
                    
                    
      out.write("\r\n");
      out.write("                    \r\n");
      out.write("        \r\n");
      out.write("                <div id=\"contentWrapper\">\r\n");
      out.write("            <div id=\"contentWrap\">\r\n");
      out.write("                <div id=\"content\">\r\n");
      out.write("                    <div class=\"cate-wrap\">\r\n");
      out.write("                        <div class=\"bcate\"><a href=\"\" class=\"-mos\">");
      out.print( category );
      out.write("</a></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"total-sort\">\r\n");
      out.write("                        <div class=\"total\">\r\n");
      out.write("                            TOTAL <strong>");
      out.print( total );
      out.write("</strong> EA\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <ul class=\"sort\">\r\n");
      out.write("\r\n");
      out.write("                            <li><a href=\"javascript:sendsort('viewcnt')\"><span>BEST</span></a>\r\n");
      out.write("                            </li>\r\n");
      out.write("\r\n");
      out.write("                            <li><a href=\"javascript:sendsort('price')\"><span>LOW PRICE</span></a>\r\n");
      out.write("                            </li>\r\n");
      out.write("\r\n");
      out.write("                            <li><a href=\"javascript:sendsort('price2')\"><span>HIGE PRICE</span></a>\r\n");
      out.write("                            </li>\r\n");
      out.write("\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div><!-- //total-sort  -->\r\n");
      out.write("                    \r\n");
      out.write("                    \r\n");
      out.write("                    \r\n");
      out.write("               <div class=\"item-wrap\">\r\n");
      out.write("                        <ul class=\"item-list\">\r\n");
      out.write("                    \r\n");
      out.write("\r\n");
      out.write("                    \r\n");
      out.write("                    ");

                    for ( int i = 0; i < list.size(); i++) {
                    
                    
      out.write("\r\n");
      out.write("\r\n");
      out.write("                            <li class=\"\">\r\n");
      out.write("                                <div class=\"item-box \">\r\n");
      out.write("                                    <div class=\"item-thumb mos03\">\r\n");
      out.write("                                        <a href=\"object.jsp?name=");
      out.print(list.get(i).getName());
      out.write("\"><img class=\"\" src=\"object_photo/");
      out.print(list.get(i).getPhoto());
      out.write("\"/></a>\r\n");
      out.write("                                        <div class=\"item-info\">\r\n");
      out.write("                                            <p class=\"item-name\">");
      out.print(list.get(i).getName());
      out.write("</span></p>\r\n");
      out.write("                                            <span class=\"snap_review_count noset\" snap_item_id=\"\"></span>\r\n");
      out.write("                                            <p class=\"item-price\">");
      out.print(list.get(i).getPrice());
      out.write("</p>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            \r\n");
      out.write("                           \r\n");
      out.write("                           total++;\r\n");
      out.write("                            \r\n");
      out.write("            ");
 } 
      out.write("\r\n");
      out.write("                     \r\n");
      out.write("                     \r\n");
      out.write("                     \r\n");
      out.write("                    <div class=\"content_row_3\">\r\n");
      out.write("                        <span class=\"list_prev_btn\">문의사항 이전 버튼</span>\r\n");
      out.write("                        <a href=\"sub_acc.html\">1</a>\r\n");
      out.write("                        <span class=\"list_next_btn\">문의사항 다음 버튼</span>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div><!-- .item-wrap -->\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <hr />\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div class=\"section fp-auto-height\" id=\"section3\">\r\n");
      out.write("        <!-- 하단 시작 -->\r\n");
      out.write("        <footer>\r\n");
      out.write("            <div id=\"bottom\">\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <div class=\"footer\">\r\n");
      out.write("                        <div class=\"left upper\">\r\n");
      out.write("                            <!-- 텍스트로고  <h1><a href=\"/\">Deotsem</a></h1>-->\r\n");
      out.write("                            <!-- 이미지로고 -->\r\n");
      out.write("                            <h1><a href=\"\"><img src=\"images/logoimg.png\" /></a></h1>\r\n");
      out.write("\r\n");
      out.write("                            <a href=\"\">About us</a>\r\n");
      out.write("                            <a href=\"\">Contact</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- left -->\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- footer -->\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"inner upper\">\r\n");
      out.write("\r\n");
      out.write("                        <ul class=\"foot_info1\">\r\n");
      out.write("                            <li><span><b>OPEN.</b></span><span>Mon-Fri 13:30~18:00</span><span>Weekend, Holiday\r\n");
      out.write("                                    off</span></li>\r\n");
      out.write("\r\n");
      out.write("                            <li><span><b>BANK INFO.</b> </span><span>국민 000000-00-000000 예금주: 덧셈 </span></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("\r\n");
      out.write("                        <ul class=\"foot_info\">\r\n");
      out.write("                            <li><span>Company</span><span>덧셈</span></li>\r\n");
      out.write("                            <li><span>Ceo</span><span>안정빈 유지혜</span></li>\r\n");
      out.write("                            <li><span>E-MAIL deotsem@naver.com</span></li>\r\n");
      out.write("                            <li><span>Business License</span><span>000-00-00000 [check]</span> <span>2019\r\n");
      out.write("                                    화성장안</span></li>\r\n");
      out.write("\r\n");
      out.write("                            <li><span>Address</span><span> 경기도 화성시 봉담읍 상리 1182 덧셈 </span></li>\r\n");
      out.write("                            <li><span>Privacy Manager</span><span>안정빈 유지혜</span> </li>\r\n");
      out.write("                            <li class=\"copy ft_font1\">\r\n");
      out.write("                                 <span><a>Copyright ©</span>\r\n");
      out.write("                                <span><b>덧셈</b></span>\r\n");
      out.write("                                <span>allrights reserved.</a></span>\r\n");
      out.write("                                <span></span>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div><!-- //inner-->\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </footer>\r\n");
      out.write("        <div id=\"mask\"></div>\r\n");
      out.write("        <!-- //하단 끝 -->\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- //끝 -->\r\n");
      out.write("    </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
