package Project;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import javax.swing.table.DefaultTableModel;


public class userInfo {
    private JPanel Jp_1;
    private JLabel TLLabel;
    private JLabel BLLabel;
    private JButton BCButton;
    private JButton TCButton;
    private JTable Booktable;
    private JTable TicketTable;
    private JButton userdatasetButton;
    private JButton TRCButton;
    private String pw = "";
    private String pwc = "";
    private Object[] TTC = {"구매 일자", "티켓명", "가격", "발권 장소", "환불 여부"};
    private Object[][] TTdata = {};
    private DefaultTableModel TTmodel = new DefaultTableModel(TTdata, TTC) {
        public boolean isCellEditable(int rowIndex, int mColIndex) {
            return false;
        }
    };
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

    userInfo(String pn) {
        TTMake(pn);
        BTMake(pn);
        TicketTable.setModel(TTmodel);
        Booktable.setModel(BTmodel);
        userdatasetButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                userdataset uif = new userdataset(pn);
                uif.start(pn);
            }
        });
        TCButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                int row = TicketTable.getSelectedRow();
                if(TicketTable.getSelectedRow() == -1) {
                    JOptionPane.showMessageDialog(null, "선택된 항목이 없습니다.");
                }
                else if (TicketTable.getValueAt(row, 4).toString().equals("YES")) {
                    JOptionPane.showMessageDialog(null, "이미 환불 되었습니다.");
                }
                else {
                    int answer = JOptionPane.showConfirmDialog(null, "티켓을 정말 환불하시겠습니까?", "티켓 환불 확인", JOptionPane.YES_NO_OPTION);
                    if (answer == JOptionPane.YES_OPTION) {
                        //사용자가 yes를 눌렀을 떄
                        TC(pn);
                    } else {
                    }
                }
            }
        });
        TRCButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                int row = TicketTable.getSelectedRow();
                if(TicketTable.getSelectedRow() == -1) {
                    JOptionPane.showMessageDialog(null, "선택된 항목이 없습니다.");
                }
                else if (TicketTable.getValueAt(row, 4).toString().equals("NO")) {
                    JOptionPane.showMessageDialog(null, "환불이 이미 취소 되었습니다.");
                }
                else {
                    int answer = JOptionPane.showConfirmDialog(null, "환불을 취소하시겠습니까?", "티켓 환불 취소 확인", JOptionPane.YES_NO_OPTION);
                    if (answer == JOptionPane.YES_OPTION) {
                        //사용자가 yes를 눌렀을 떄
                        TRC(pn);
                    } else {
                    }
                }
            }
        });
        BCButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                int row = Booktable.getSelectedRow();
                if (Booktable.getSelectedRow() == -1) {
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
    }

    public void start(String pn) {
        frame.setContentPane(new userInfo(pn).Jp_1);
        frame.setSize(640, 480);
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
        frame.pack();
    }

    public void TTMake(String PN) {
        Connection con = null;
        Object[] data = new Object[5];
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, id, password);
            String sql = "select 구매.판매일시, 티켓.티켓종류, 구매.구매가격, 구매.발권장소, 구매.환불내역 from 구매 LEFT JOIN 티켓 ON 구매.티켓고유번호 = 티켓.티켓고유번호 where 구매.휴대폰번호 = ? ORDER by 구매.판매일시";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, PN);
            pstmt.executeUpdate();
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                data[0] = rs.getString("판매일시");
                data[1] = rs.getString("티켓종류");
                data[2] = rs.getString("구매가격");
                data[3] = rs.getString("발권장소");
                data[4] = rs.getString("환불내역");
                TTmodel.addRow(data);
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
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

    public void TC(String pn) {
        Connection con = null;
        int rowIndex = TicketTable.getSelectedRow();
        int row = TicketTable.getSelectedRow();
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, id, password);
            CallableStatement cstmt = con.prepareCall("{ call TicketTableDelete(?,?) }");
            cstmt.setString(1, TicketTable.getValueAt(row, 1).toString());
            cstmt.setString(2, pn);
            cstmt.execute();
            JOptionPane.showMessageDialog(null, "환불되었습니다.");
            TicketTable.setValueAt("YES",row,4);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void TRC(String pn) {
        Connection con = null;
        int rowIndex = TicketTable.getSelectedRow();
        int row = TicketTable.getSelectedRow();
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, id, password);
            CallableStatement cstmt = con.prepareCall("{ call TicketTableDeleteCancel(?,?) }");
            cstmt.setString(1, TicketTable.getValueAt(row, 1).toString());
            cstmt.setString(2, pn);
            cstmt.execute();
            JOptionPane.showMessageDialog(null, "환불 취소 되었습니다.");
            TicketTable.setValueAt("NO",row,4);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    public void BC(String pn) {
        Connection con = null;
        int rowIndex = Booktable.getSelectedRow();
        int row = Booktable.getSelectedRow();
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, id, password);
            CallableStatement cstmt = con.prepareCall("{ call BookTableCancel(?) }");
            cstmt.setString(1, Booktable.getValueAt(row, 0).toString());
            cstmt.execute();
            JOptionPane.showMessageDialog(null, "예약 취소 되었습니다.");
            BTmodel.removeRow(row);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}

