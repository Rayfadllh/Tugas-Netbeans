<%-- 
    Document   : tambah
    Created on : Dec 5, 2023, 7:53:40 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="stylelat.css" rel="stylesheet"/>
        <title>Tambah Data Mahasiswa</title>
    </head>
    <body>
        <%@page import= "java.sql.*" %>
        <%@page import ="javax.swing.*" %>
        <%
            String topMenu="<nav><ul>"
                    + "<li><a href=index16.jsp>Home</a></li>"
                    + "<li><a href=tambah.jsp>Tambah Data Mahasiswa</a>"
                    + "</li>"
                    + "</ul>"
                    + "<nav>";
            
            String nim=request.getParameter("nim");
            String nama=request.getParameter("nama");
            String alamat=request.getParameter("alamat");
            String prodi=request.getParameter("prodi");
            String URL = "jdbc:mysql://localhost/unpamjavaweb";
            
            Connection conn = null;
            PreparedStatement ps = null;
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            int updateQuery=0;
            
            if (nim!=null && nama !=null && alamat!=null && prodi!=null){
                try {
                    conn = DriverManager.getConnection(URL, "root", "");
                    String query = "INSERT INTO mahasiswa (nim, nama, alamat, prodi) VALUES (?,?,?,?)";
                    ps = conn.prepareStatement (query);
                    ps.setString(1, nim);
                    ps.setString(2, nama);
                    ps.setString(3, alamat);
                    ps.setString(4, prodi);
                    updateQuery=ps.executeUpdate();
                    if (updateQuery!=0) {
                        JOptionPane.showMessageDialog(null, "Berhasil Tambah Data Mahasiswa");
                        response.sendRedirect("index16.jsp");
                    }
                } catch (Exception e) {
                    response.sendRedirect("index16.jsp");
                } finally {
                    ps.close();
                    conn.close();
                }
            }
            %> 
    <center>
        <table width="80%" bgcolor="#eeeeee">
            <tr>
                <td colspan="4" align="center">
                    <br>
                    <h2 colspan="4" align="center">Tambah Data Mahasiswa</h2>
                    <h1 colspan="4" align="center">UNIVERSITAS PAMULANG</h1>
                    <h4 colspan="4" align="center">Jl. Surya Kencana No.1 Pamulang, Tangerang Selatan, Banten</h4>
                    <%=topMenu%>
                    </center>
                    <br>
                    <form colspan="4" align="center" action="" method="post">
                    <label>NIM : </label><input type="text" name="nim" /><br/>
                    <label>Nama Mahasiswa : </label><input type="text" name="nama" /><br/>
                    <label>Alamat : </label><input type="text" name="alamat" /><br/>
                    <label>Program Studi : </label>
                    <select id="prodi" name="prodi">
                        <option value="Teknik Informatika">Teknik Informatika</option>
                        <option value="Sistem Informasi">Sistem Informasi</option>
                        <option value="Akuntansi">Akuntansi</option>
                        <option value="Manajemen">Manajemen</option>
                    </select><br/>
                    <br>
                    <input type="submit" name="submit" value="Simpan"/>
                    <button href="index16.jsp">Kembali</button><br><br>
                    </form>
                    <center>
                </td>
            </tr>
            <tr>
                <td colspan="4" align="center" bgcolor="#eeeeff">
                    <small>
                        Copyright &copy; 2022 Universitas Pamulang<br>
                        Jl.Surya Kencana No.1 Pamulang, Tangerang Selatan, Banten<br>
                    </small>
                </td>
            </tr>
        </table>
    </center>
    </body>
</html>