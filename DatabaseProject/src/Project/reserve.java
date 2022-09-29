package Project;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import java.time.LocalDate;

public class reserve {
    private JPanel Jp_1;
    private JTable TicketTable;
    private JTable reserveTable;
    private JButton 발권Button;
    private JButton 예약Button;
    private Object[] TTH = {"티켓번호","가격", "종류"};
    private Object[][] TTdata = {};
    private Object[] RTH = {"어트랙션명", "운휴정보", "운행시작시간", "운행종료시간", "위치", "탑승예약제유무"};
    private Object[][] RTdata = {};
    private DefaultTableModel TTmodel = new DefaultTableModel(TTdata, TTH) {
        public boolean isCellEditable(int rowIndex, int mColIndex) {
            return false;
        }
    };
    private DefaultTableModel RTmodel = new DefaultTableModel(RTdata, RTH) {
        public boolean isCellEditable(int rowIndex, int mColIndex) {
            return false;
        }
    };
    private JFrame frame = new JFrame();
    private String url = "jdbc:oracle:thin:@localhost:1521:XE";
    private String id = "system";
    private String password = "1234";

    public reserve(String PN) {
        TTMake();
        TicketTable.setModel(TTmodel);
        RTMake();
        reserveTable.setModel(RTmodel);
        발권Button.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                set_구매(PN,String.valueOf(TicketTable.getValueAt(TicketTable.getSelectedRow(),0)));

            }
        });
        예약Button.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int row = reserveTable.getSelectedRow();
                if (reserveTable.getSelectedRow() == -1) {
                    JOptionPane.showMessageDialog(null, "선택된 항목이 없습니다.");
                }
                else if(reserveTable.getValueAt(reserveTable.getSelectedRow(),1).equals("휴무"))
                {
                    JOptionPane.showMessageDialog(null, "휴뮤중인 어트랙션의 예약은 불가능합니다.");
                }
                else {
                    int answer = JOptionPane.showConfirmDialog(null, reserveTable.getValueAt(reserveTable.getSelectedRow(),0)+"\n선택한 놀이기구의 탑승 예약을 진행하시겠습니까?", "시간 예약 취소 확인", JOptionPane.YES_NO_OPTION);
                    if (answer == JOptionPane.YES_OPTION) {
                        //사용자가 yes를 눌렀을 떄
                        Book uif = new Book(PN, reserveTable.getValueAt(reserveTable.getSelectedRow(),0).toString());
                        uif.start(PN, reserveTable.getValueAt(reserveTable.getSelectedRow(),0).toString());
                    } else {
                    }
                }
            }
        });
    }
    public void start(String pn){
        JFrame frame = new JFrame();
        frame.setContentPane(new reserve(pn).Jp_1);
        frame.setSize(640, 480);
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
        frame.pack();
    }
    public void TTMake() {
        Connection con = null;
        Object[] data = new Object[3];
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, id, password);
            String sql = "select 티켓고유번호, 티켓가격, 티켓종류 from 티켓";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.executeUpdate();
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                data[0] = rs.getString("티켓고유번호");
                data[1] = rs.getString("티켓가격");
                data[2] = rs.getString("티켓종류");
                TTmodel.addRow(data);
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    public void RTMake() {
        Connection con = null;
        Object[] data = new Object[6];
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, id, password);
            String sql = "select 어트랙션명, 운휴정보, 운행시작시간, 운행종료시간, 위치, 탑승예약제유무 from 어트랙션 where 탑승예약제유무 = 'YES'";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.executeUpdate();
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                data[0] = rs.getString("어트랙션명");
                data[1] = rs.getString("운휴정보");
                data[2] = rs.getString("운행시작시간");
                data[3] = rs.getString("운행종료시간");
                data[4] = rs.getString("위치");
                data[5] = rs.getString("탑승예약제유무");
                RTmodel.addRow(data);
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    public void set_구매(String pn, String tn)
    {
        LocalDate now = LocalDate.now();
        Connection con = null;
        int tp = 0;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, id, password);
            String sql = "select 티켓가격 from 티켓 where 티켓고유번호 = '"+tn+"'";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.executeUpdate();
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                tp = rs.getInt("티켓가격");
            }
            rs.close();
            buy_ticket(pn,tn,tp);

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    public void buy_ticket(String PN, String Pt,int price)
    {
        Connection con = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, id, password);

            CallableStatement cstmt = con.prepareCall("{ call Buy_ticket(?,?,?)}");
            cstmt.setInt(1,price);
            cstmt.setString(2,Pt);
            cstmt.setString(3,PN);
            cstmt.execute();
            JOptionPane.showMessageDialog(null, "구매완료!");
        } catch (ClassNotFoundException e) {
            JOptionPane.showMessageDialog(null, "sql 실행 오류");
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "sql 실행 오류");
        }
    }

}
