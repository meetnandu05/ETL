
package trial1;

import java.io.File;
import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import java.beans.Statement;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Trial1 {

    public static void main(String[] args) throws Exception
    {
        ETL_GUI e=new ETL_GUI();
        e.setVisible(true);
}
        
        void extract() throws Exception
                {
        Class.forName("com.mysql.jdbc.Driver"); // throws ClassNotFoundException
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root", "");
	System.out.println("Connected");
	java.sql.Statement st=conn.createStatement();
        // EXCEL FILE //
        
        File f=new File("C:\\Users\\LENOVO\\Desktop\\ADBMS\\Pokemon1.xls");
        Workbook wb=Workbook.getWorkbook(f);
        Sheet s=wb.getSheet(0);
        int row=s.getRows();
        int col=s.getColumns();
        for(int i=0;i<row;i++)
        {
            int j=0;
                Cell c=s.getCell(j,i);
                String id=c.getContents();
                j++;
                c=s.getCell(j,i);
                String name=c.getContents();
                j++;
                c=s.getCell(j,i);
                String type=c.getContents();
                j++;
                c=s.getCell(j,i);
                String tot=c.getContents();
                j++;
                c=s.getCell(j,i);
                String hp=c.getContents();
                j++;
                c=s.getCell(j,i);
                String leg=c.getContents();
            String sql="insert into PokemonFinal values (?,?,?,?,?,?)";
            PreparedStatement psmt=conn.prepareStatement(sql);
            psmt.setString(1, id);
            psmt.setString(2, name);
            psmt.setString(3, type);
            psmt.setString(4, tot);
            psmt.setString(5, hp);
            psmt.setString(6, leg);
            psmt.executeUpdate();
        }
        
        // NOTEPAD FILE //
        
        String[] words=new String[6];
        File f1=new File("C:\\Users\\LENOVO\\Desktop\\ADBMS\\Pokemon2.txt");
        BufferedReader fr = new BufferedReader(new InputStreamReader(new FileInputStream(f1), "ASCII"));
        
        while(true)
        {
            String line = fr.readLine();
            if(line==null)
                break;
            words=(line.split("\\t"));//those are your words
            int i=0;
            String id=words[i];
            i++;
            String name=words[i];
            i++;
            String type=words[i];
            i++;
            String tot=words[i];
            i++;
            String hp=words[i];
            i++;
            String leg=words[i];
            String sql="insert into PokemonFinal values (?,?,?,?,?,?)";
            PreparedStatement psmt=conn.prepareStatement(sql);
            psmt.setString(1, id);
            psmt.setString(2, name);
            psmt.setString(3, type);
            psmt.setString(4, tot);
            psmt.setString(5, hp);
            psmt.setString(6, leg);
            psmt.executeUpdate();
        }
        
        // MySQL File //
        
        Class.forName("com.mysql.jdbc.Driver"); // throws ClassNotFoundException
        Connection connn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pokemon3","root", "");
	System.out.println("Connected");
	java.sql.Statement stm=connn.createStatement();
        String sql="select * from etl";
        PreparedStatement psmt=connn.prepareStatement(sql);
        ResultSet rst=psmt.executeQuery();
        while(rst.next())
        {
            User usr=new User();
            usr.setId(rst.getString("Id"));
            usr.setName(rst.getString("Name"));
            usr.setType(rst.getString("Type"));
            usr.setTot(rst.getString("Total"));
            usr.setHp(rst.getString("HP"));
            usr.setLeg(rst.getString("Legendary"));
            String sql1="insert into PokemonFinal values (?,?,?,?,?,?)";
            PreparedStatement psmtt=conn.prepareStatement(sql1);
            psmtt.setString(1, usr.getId());
            psmtt.setString(2, usr.getName());
            psmtt.setString(3, usr.getType());
            psmtt.setString(4, usr.getTot());
            psmtt.setString(5, usr.getHp());
            psmtt.setString(6, usr.getLeg());
            psmtt.executeUpdate();
        
        }
        
        
        String sql1="select * from pokemonfinal";
        PreparedStatement psmt1=conn.prepareStatement(sql1);
        ResultSet rst1=psmt1.executeQuery();
        while(rst1.next())
        {
            System.out.print(rst1.getString("id")+" "+rst1.getString("name")+" "+rst1.getString("type")+" "+rst1.getString("tot")+" "+rst1.getString("hp")+" "+rst1.getString("leg")+" ");
            System.out.println("");
        }
                }
        
        
        void transform() throws Exception
        {
        Class.forName("com.mysql.jdbc.Driver"); // throws ClassNotFoundException
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root", "");
	System.out.println("Connected");
//	java.sql.Statement st=conn.createStatement();
        String sql2="update pokemonfinal set leg='FALSE' where leg='0' or leg='F' ";
        
        String sql3="update pokemonfinal set leg='TRUE' where leg='1' or leg='T' ";
        
        PreparedStatement psmt=conn.prepareStatement(sql2);
        psmt.executeUpdate();
        
       psmt=conn.prepareStatement(sql3);
       psmt.executeUpdate();
        
        }
            
    }
    

