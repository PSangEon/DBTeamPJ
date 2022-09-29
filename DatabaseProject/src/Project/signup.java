package Project;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

public class signup {
    private JPanel Jp_1;
    private JTextField name_txtfield;
    private JTextField age_txtfield;
    private JTextField Pnumber_txtfield;
    private JTextField address_txtfield;
    private JButton signup_bt;
    private JButton cancel;
    private JPasswordField pw_txtfield;
    JFrame frame = new JFrame();
    private String pw = "";
    String url = "jdbc:oracle:thin:@localhost:1521:XE";
    String id = "system";
    String password = "1234";

    public signup() {
        signup_bt.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                char[] secret_pw = pw_txtfield.getPassword();
                for(char cha : secret_pw)
                {
                    Character.toString(cha);
                    pw += (pw.equals("")) ? ""+cha+"" : ""+cha+"";
                }
                if(empty(name_txtfield.getText())||
                        empty(age_txtfield.getText())||
                        empty(pw)||
                        empty(Pnumber_txtfield.getText())||
                        empty(address_txtfield.getText())) {
                    JOptionPane.showMessageDialog(null, "모든값을 입력하지 않았습니다.");
                }
                else if(TryParse(age_txtfield.getText()))
                {
                    JOptionPane.showMessageDialog(null, "나이에는 숫자만 입력하세요.");
                }
                else if(0>Integer.parseInt(age_txtfield.getText()))
                {
                    JOptionPane.showMessageDialog(null, "나이 입력 오류");
                }
                else if(ID_search(Pnumber_txtfield.getText()))
                {
                    JOptionPane.showMessageDialog(null, "전화번호 중복입니다");
                }
                else
                {
                    run_proc(pw);
                    logIn li = new logIn();
                    li.start();
                    frame.setVisible(false);
                }

            }
        });
        cancel.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                logIn li = new logIn();
                li.start();
                frame.setVisible(false);

            }
        });
    }
    public void start()
    {
        frame.setContentPane(Jp_1);
        frame.setSize(640, 480);
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
    }

    public boolean empty(String value) {
        if (value.equals("")) {
            return true;
        }
        return false;
    }
    public void run_proc(String pw)
    {
        Connection con = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, id, password);

            CallableStatement cstmt = con.prepareCall("{ call inMem(?,?,?,?,?) }");
            cstmt.setString(1,Pnumber_txtfield.getText());
            cstmt.setInt(2,Integer.parseInt(age_txtfield.getText()));
            cstmt.setString(3,name_txtfield.getText());
            cstmt.setString(4,address_txtfield.getText());
            cstmt.setString(5,pw);
            cstmt.execute();
            JOptionPane.showMessageDialog(null, "회원가입 완료!");

        } catch (ClassNotFoundException e) {
            JOptionPane.showMessageDialog(null, "sql 실행 오류");
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "sql 실행 오류"+pw);
        }
    }
    public boolean ID_search(String ID)
    {
        Connection con = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, id, password);
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select 휴대폰번호 from 고객 where 고객.휴대폰번호 = '"+ID+"'");
            String tmpID ="";
            while (rs.next())
            {
                tmpID = rs.getString("휴대폰번호");
            }
            if(tmpID.equals(ID))
            {
                return true;
            }
            return false;

        } catch (ClassNotFoundException e) {
            return false;
        } catch (SQLException e) {
            return false;
        }
    }
    public boolean TryParse(String value)
    {
        try {
            Integer.parseInt(value);
        }
        catch(NumberFormatException e) {
            return true;
        }
        return false;
    }
}

