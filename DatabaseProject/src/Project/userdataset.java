package Project;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import java.util.ArrayList;

public class userdataset {
    private JPanel Jp_1;
    private JLabel PnLabel;
    private JLabel RTLabel;
    private JLabel PNCLabel;
    private JLabel RTCLabel;
    private JTextField NameTextField;
    private JTextField AGEField;
    private JTextField AddTextField;
    private JButton UpdateButton;
    private JPasswordField PWField;
    private JPasswordField PWCField;
    private JLabel NameLabel;
    private JLabel AGELabel;
    private JLabel PWCLabel;
    private JLabel PwLabel;
    private JLabel AddLabel;
    private JButton PWUpdateButton;
    private String pw = "";
    private String pwc = "";
    private JFrame frame = new JFrame();
    private String url = "jdbc:oracle:thin:@localhost:1521:XE";
    private String id = "system";
    private String password = "1234";

    userdataset(String pn) {
        ArrayList tmp = new ArrayList();
        tmp = UserDataGet(pn);
        PNCLabel.setText(tmp.get(0).toString());
        AGEField.setText(tmp.get(1).toString());
        RTCLabel.setText(tmp.get(2).toString());
        NameTextField.setText(tmp.get(3).toString());
        AddTextField.setText(tmp.get(4).toString());

        UpdateButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (empty(NameTextField.getText()) ||
                        empty(AGEField.getText()) ||
                        empty(AddTextField.getText())) {
                    JOptionPane.showMessageDialog(null, "모든값을 입력하지 않았습니다.");
                } else if (TryParse(AGEField.getText())) {
                    JOptionPane.showMessageDialog(null, "나이에는 숫자만 입력하세요.");
                } else if (0 > Integer.parseInt(AGEField.getText())) {
                    JOptionPane.showMessageDialog(null, "나이 입력 오류");
                } else {
                    int answer = JOptionPane.showConfirmDialog(null, "정말 수정하시겠습니까?\n" +
                            "이름 : "+NameTextField.getText()+"\n나이 : "+AGEField.getText()+"\n주소 : "+AddTextField.getText(), "이용자 정보 변경 확인",JOptionPane.YES_NO_OPTION );
                    if(answer == JOptionPane.YES_OPTION){
                        //사용자가 yes를 눌렀을 떄
                        ResetUserDB(pn);
                    } else{
                    }
                }
            }
        });
        PWUpdateButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                char[] secret_pw = PWField.getPassword();
                char[] secret_pwc = PWCField.getPassword();
                for(char cha : secret_pw)
                {
                    Character.toString(cha);
                    pw += (pw.equals("")) ? ""+cha+"" : ""+cha+"";
                }
                for(char chac : secret_pwc)
                {
                    Character.toString(chac);
                    pwc += (pwc.equals("")) ? ""+chac+"" : ""+chac+"";
                }
                if (empty(pw))
                {
                    JOptionPane.showMessageDialog(null, "변경할 비밀번호를 입력해주세요");
                }
                else if (empty(pwc)){
                    JOptionPane.showMessageDialog(null, "비밀번호 확인란을 입력해주세요");
                }
                else if (!pw.equals(pwc)) {
                    JOptionPane.showMessageDialog(null, "비밀번호가 일치하지 않습니다.");
                } else {
                    int answer = JOptionPane.showConfirmDialog(null, "비밀번호를 정말 수정하시겠습니까?", "비밀번호 변경 확인",JOptionPane.YES_NO_OPTION );
                    if(answer == JOptionPane.YES_OPTION){
                        //사용자가 yes를 눌렀을 떄
                        ResetUserPW(pn,pw);
                        PWCField.setText("");
                        PWField.setText("");
                    }
                    else
                    {
                    }
                }
            }
        });
    }
    public void start(String pn){
        frame.setContentPane(new userdataset(pn).Jp_1);
        frame.setSize(640, 480);
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
        frame.pack();
    }
    public ArrayList UserDataGet(String PN) {
        ArrayList tmp = new ArrayList();
        Connection con = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, id, password);
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select 휴대폰번호, 나이, 고객등급, 고객이름, 고객주소 from 고객 where 고객.휴대폰번호 = '" + PN + "'");

            while (rs.next()) {
                tmp.add(rs.getString("휴대폰번호"));
                tmp.add(rs.getString("나이"));
                tmp.add(rs.getString("고객등급"));
                tmp.add(rs.getString("고객이름"));
                tmp.add(rs.getString("고객주소"));
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return tmp;
    }
    public void ResetUserDB(String PN)
    {
        Connection con = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, id, password);

            CallableStatement cstmt = con.prepareCall("{ call ResetUser(?,?,?,?) }");
            cstmt.setString(1,PN);
            cstmt.setInt(2,Integer.parseInt(AGEField.getText()));
            cstmt.setString(3,NameTextField.getText());
            cstmt.setString(4,AddTextField.getText());
            cstmt.execute();
            JOptionPane.showMessageDialog(null, "수정완료되었습니다!");

        } catch (ClassNotFoundException e) {
            JOptionPane.showMessageDialog(null, "sql 실행 오류");
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "sql 실행 오류");
        }
    }
    public void ResetUserPW(String PN, String PW)
    {
        Connection con = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, id, password);

            CallableStatement cstmt = con.prepareCall("{ call ResetUserPW(?,?) }");
            cstmt.setString(1,PN);
            cstmt.setString(2,PW);
            cstmt.execute();
            JOptionPane.showMessageDialog(null, "수정완료되었습니다!");
        } catch (ClassNotFoundException e) {
            JOptionPane.showMessageDialog(null, "sql 실행 오류");
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "sql 실행 오류");
        }
    }
    public boolean empty(String value) {
        if (value.equals("")) {
            return true;
        }
        return false;
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
