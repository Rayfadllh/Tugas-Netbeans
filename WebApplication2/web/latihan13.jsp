<%-- 
    Document   : index3
    Created on : Nov 22, 2023, 12:48:19 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="stylelat.css" rel="stylesheet" type="text/css" />
        <title>Aplikasi Penjualan Barang</title>
    </head>
    <body bgcolor="#A9A9A9">
        <%
            String menu="<br><b>Master Data</b><br>"
                    + "<a href=.>Nama Produk</a><br>"
                    + "<a href=.>Stok Barang</a><br><br>"
                    + "<b>Transaksi</b><br>"
                    + "<a href=.>Harga Barang</a><br><br>"
                    + "<b>Laporan</b><br>"
                    + "<a href=.>Nilai</a><br><br>"
                    + "<a href=LoginController>Login</a><br><br>";
            String topMenu="<nav><ul>"
                    +"<li><a href=.>Home</a></li>"
                    +"<li><a href=#>Master Data</a>"
                    +"<ul>"
                    +"<li><a href=.>Mahasiswa</a></li>"
                    +"<li><a href=.>Mata Kuliah</a></li>"
                    +"</ul>"
                    +"</li>"
                    +"<li><a href=#>Transaksi</a>"
                    +"<ul>"
                    +"<li><a href=.>Nilai</a></li>"
                    +"</ul>"
                    +"</li>"
                    +"<li><a href=#>Laporan</a>"
                    +"<ul>"
                    +"<li><a href=.>Nilai</a></li>"
                    +"</ul>"
                    +"</li>"
                    +"<li><a href=LoginController>Login</a></li>"
                    +"</ul>"
                    +"</nav>";
            String konten="<br><h1>Selamat Berbelanja</h1>";
            String userName="";
            
            if (!session.isNew()){
                try {
                    userName = session.getAttribute("userName").toString();
                } catch (Exception ex) {}
                
                if (!((userName == null) || userName.equals(""))){
                    konten += "<h2>"+userName+"</h2>";
                    
                    try {
                        menu = session.getAttribute("menu").toString();
                    } catch (Exception ex){}
                    
                    try {
                        topMenu = session.getAttribute("topMenu").toString ();
                    } catch (Exception ex){}    
                        
                }
            }
            
        %>  
        
    <center>
        <table width="80%" bgcolor="#7FFFD4">
            <tr>
                <td colspan="2" align="center">
                    <br>
                    <h2 Style="margin-bottom:0px; margin-top:0px;">
                        Website Toko Listrik
                    </h2>
                    <h1 Style="margin-bottom:0px; margin-top:0px;">
                        MAJU JAYA
                    </h1>
                    <h4 Style="margin-bottom:0px; margin-top:0px;">
                        Jl. Raya Serpong, Tangerang Selatan, Banten
                    </h4>
                    <br>
                </td>
            </tr>
            <tr height="400">
                <td width="200" align="center" valign="top" bgcolor="#7FFFD4">
                    <br>
                    <div id="menu">
                        <%=menu %>
                    </div>
                </td>
            
                <td align="center" valign="top" bgcolor="#FFF8DC">
                    <%=topMenu%>
                    <br>
                    <%=konten %>
                </td>
            </tr>
            <tr>
                <td colspan="6" align="center" bgcolor="#E0FFFF">
                    <br> Jl. Raya Serpong, Tangerang Selatan, Banten<br>
                </td>
            </tr>
                
                </td>
            
                    </div>
                </td>
            </tr>
                </td>
            </tr>
        </table>
    </center>
        
    </body>
</html>
