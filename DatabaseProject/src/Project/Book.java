package Project;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import java.text.*;

public class Book {
    private JPanel Jp_1;
    private JButton BookButton;
    private JLabel ATLabel;
    private JLabel CATLabel;
    private JComboBox HcomboBox;
    private JComboBox McomboBox;
    private JLabel HLabel;
    private JLabel MLabel;
    private JTable BookTable;
    private JLabel BookLabel;
    private JButton BCButton;
    private JComboBox DDcomboBox;
    private JComboBox MMcomboBox;
    private JComboBox YYcomboBox;
    private JLabel YYLabel;
    private JLabel MMLabel;
    private JLabel DDLabel;
    private Object[] BTC = {"예약번호", "예약 시간", "기구명", "기구 위치"};
    private Object[][] BTdata = {};
    private DefaultTableModel BTmodel = new DefaultTableModel(BTdata, BTC) {
        public boolean isCellEditable(int rowIndex, int mColIndex) {
            return false;
        }
    };
    private JFrame frame = new JFrame();
    private String url = "jdbc:oracle:thin:@localhost:1521:XE";
    private String id = "system";
    private String password = "1234";
    Book(String pn,String cat)
    {
        CMMake();
        BTMake(pn);
        CATLabel.setText(cat);
        BookTable.setModel(BTmodel);
        BCButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                int row = BookTable.getSelectedRow();
                if (BookTable.getSelectedRow() == -1) {
                    JOptionPane.showMessageDialog(null, "선택된 항목이 없습니다.");
                } else {
                    int answer = JOptionPane.showConfirmDialog(null, "예약을 취소하시겠습니까?", "시간 예약 취소 확인", JOptionPane.YES_NO_OPTION);
                    if (answer == JOptionPane.YES_OPTION) {
                        //사용자가 yes를 눌렀을 떄
                        BC(pn);
                    } else {
                    }
                }
            }
        });
        BookButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                String ct=YYcomboBox.getSelectedItem().toString()+"-"+
                        MMcomboBox.getSelectedItem().toString()+"-" +
                        DDcomboBox.getSelectedItem().toString()+" "+
                        HcomboBox.getSelectedItem().toString()+":"+
                        McomboBox.getSelectedItem().toString();
                int answer = JOptionPane.showConfirmDialog(null,
                        CATLabel.getText()+"\n"+ ct+ "\n 선택하신 시간으로 예약하시겠습니까?", "시간 예약 확인", JOptionPane.YES_NO_OPTION);
                if (answer == JOptionPane.YES_OPTION) {
                    //사용자가 yes를 눌렀을 떄
                    BookMK(pn, CATLabel.getText(), ct);
                }
            }
        });
    }
    public void start(String pn, String cat){
        frame.setContentPane(new Book(pn, cat).Jp_1);
        frame.setSize(640, 480);
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
        frame.pack();
    }
    public void BTMake(String PN) {
        Connection con = null;
        Object[] data = new Object[4];
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, id, password);
            String sql = "select 탑승예약.예약번호, 탑승예약.예약시간, 어트랙션.어트랙션명, 어트랙션.위치 from 탑승예약 LEFT JOIN 어트랙션 ON 탑승예약.어트랙션고유번호 = 어트랙션.어트랙션고유번호 where 탑승예약.휴대폰번호 = ? ORDER by 탑승예약.예약번호";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, PN);
            pstmt.executeUpdate();
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                data[0] = rs.getString("예약번호");
                data[1] = rs.getString("예약시간");
                data[2] = rs.getString("어트랙션명");
                data[3] = rs.getString("위치");
                BTmodel.addRow(data);
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    public void CMMake()
    {
        for(int i=2021;i<2024;i++)
        {
            YYcomboBox.addItem(i);
        }
        for(int i=1;i<13;i++)
        {
            MMcomboBox.addItem(i);
        }
        for(int i=1;i<31;i++)
        {
            DDcomboBox.addItem(i);
        }
        for(int i=10;i<19;i++)
        {
            HcomboBox.addItem(i);
        }
        McomboBox.addItem("00");
        McomboBox.addItem("30");
    }
    public void BC(String pn) {
        Connection con = null;
        int rowIndex = BookTable.getSelectedRow();
        int row = BookTable.getSelectedRow();
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, id, password);
            CallableStatement cstmt = con.prepareCall("{ call BookTableCancel(?) }");
            cstmt.setString(1, BookTable.getValueAt(row, 0).toString());
            cstmt.execute();
            JOptionPane.showMessageDialog(null, "예약 취소 되었습니다.");
            BTmodel.removeRow(row);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    public void BookMK(String pn,String AT ,String time)
    {
        Connection con = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, id, password);

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT 예약번호 FROM(SELECT * FROM 탑승예약 ORDER BY ROWNUM DESC)WHERE ROWNUM = 1");
            String ln = null;
            while (rs.next()) {
                ln = rs.getString("예약번호");
            }
            ln=ln.replaceAll("[a-zA-Z]", "");
            int i = Integer.parseInt(ln);
            i=i+1;
            String to = Integer.toString(i);

            if(i<10)
            {
                to="B000"+to;
            }
            else if(i>=10||i<100)
            {
                to="B00"+to;
            }
            else if (i>=100||i<1000)
            {
                to="B0"+to;
            }
            else
            {
                to="B"+to;
            }
            String Atn = null;
            String Atl=null;
            rs = stmt.executeQuery("select 어트랙션고유번호, 위치 from 어트랙션 where 어트랙션.어트랙션명 = '"+AT+"'");
            while (rs.next()) {
                Atn = rs.getString("어트랙션고유번호");
                Atl = rs.getString("위치");
            }

            CallableStatement cstmt = con.prepareCall("{ call BookMake(?,?,?,?) }");
            cstmt.setString(1,to);
            cstmt.setString(2,time);
            cstmt.setString(3,pn);
            cstmt.setString(4,Atn);
            cstmt.execute();

            JOptionPane.showMessageDialog(null, "시간 예약 완료!");
            Object[] nbook = {to, time, AT, Atl};
            BTmodel.addRow(nbook);
        } catch (ClassNotFoundException e) {
            JOptionPane.showMessageDialog(null, "sql 실행 오류1");
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "sql 실행 오류2");
        }
    }
}