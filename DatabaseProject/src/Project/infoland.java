package Project;
import javax.swing.*;
import java.awt.*;
import java.sql.*;

public class infoland {
    private JPanel Jp_1;
    JFrame frame = new JFrame();

    public void start(){
        Dimension dim = new Dimension(420, 300);
        JFrame frame = new JFrame("wij complex");
        frame.setLocationRelativeTo(null);
        frame.setPreferredSize(dim);
        frame.setLayout(null);

        String header[]={"어트랙션명", "운휴정보", "운행시작시간", "운행종료시간", "위치","탑승예약제 유무"};
        String contents[][]=get_table();
        JTable table = new JTable(contents, header);
        JScrollPane jscp1 = new JScrollPane(table);
        jscp1.setLocation(0,0);
        jscp1.setSize(400,200);
        frame.add(jscp1);
        Button jb = new Button("종료");
        jb.setLocation(10,210);
        jb.setSize(70,30);
        frame.add(jb);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);

        jb.addActionListener(event -> {
            frame.setVisible(false);
        });


    }
    public String[][] get_table()
    {
        String value[][] = null;
        Connection con = null;
        String url = "jdbc:oracle:thin:@localhost:1521:XE";
        String id = "system";
        String password = "1234";
       try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection(url, id, password);
           Statement stmt = con.createStatement();
            value = new String[10][6];
           ResultSet rs = stmt.executeQuery("select 어트랙션명, 운휴정보, 운행시작시간, 운행종료시간, 위치, 탑승예약제유무 from 어트랙션");

            int i = 0;
           while (rs.next())
           {
               value[i][0] =  rs.getString("어트랙션명");
               value[i][1] =  rs.getString("운휴정보");
               value[i][2] =  rs.getString("운행시작시간");
               value[i][3]=  rs.getString("운행종료시간");
               value[i][4] =  rs.getString("위치");
               value[i][5] =  rs.getString("탑승예약제유무");
               i += 1;
           }

       } catch (ClassNotFoundException e) {
           JOptionPane.showMessageDialog(null, "sql오류");
       } catch (SQLException e) {
           JOptionPane.showMessageDialog(null, "sql오류");
       }
       return value;
    }


}


