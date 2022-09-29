package Project;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

public class logIn {
    private JTextField IDTextField;
    private JPanel Jp_1;
    private JButton 로그인Button;
    private JButton 회원가입Button;
    private JLabel PNLabel;
    private JLabel PWLabel;
    private JPasswordField PWField;
    JFrame frame = new JFrame();
    private String pw = "";

    public logIn() {

        로그인Button.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                char[] secret_pw = PWField.getPassword();
                for(char cha : secret_pw){
                    Character.toString(cha); //cha 에 저장된 값 string으로 변환 //pw 에 저장하기,
                    pw += (pw.equals("")) ? ""+cha+"" : ""+cha+"";
                }
                if (ID_PWsearch(IDTextField.getText(),pw)) {
                    MainMenu mn = new MainMenu();
                    mn.start(IDTextField.getText());
                    frame.setVisible(false);
                }
                else
                {
                    JOptionPane.showMessageDialog(null, "전화번호 혹은 비밀번호 오류");
                }
            }
        });
        회원가입Button.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                signup su = new signup();
                su.start();
                frame.setVisible(false);
            }
        });
    }
    public void start(){

        frame.setContentPane(Jp_1);
        frame.setSize(640, 480);
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
    }
    public boolean ID_PWsearch(String PN, String PW)
    {
        if (PN.equals("") || PW.equals(""))
            return false;
        Connection con = null;
        String url = "jdbc:oracle:thin:@localhost:1521:XE";
        String id = "system";
        String password = "1234";
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, id, password);
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select 휴대폰번호, 비밀번호 from 고객 where 고객.휴대폰번호 = '"+ PN+"'");
            String tmpPN ="";
            String tmpPW ="";
            while (rs.next())
            {
                tmpPN = rs.getString("휴대폰번호");
                tmpPW = rs.getString("비밀번호");
            }
            if(tmpPN.equals(PN))
            {
                if(tmpPW.equals(PW))
                    return true;
            }
            return false;

        } catch (ClassNotFoundException e) {
            return false;
        } catch (SQLException e) {
            return false;
        }
    }
}
