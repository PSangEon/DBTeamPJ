package Project;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class MainMenu {
    private JButton 놀이공원정보Button;
    private JButton 예약Button;
    private JButton 내정보Button;
    private String PN;
    private JPanel Jp_1;
    JFrame frame = new JFrame();

    MainMenu()
    {
        놀이공원정보Button.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                infoland ifl = new infoland();
                ifl.start();
            }
        });

        예약Button.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                reserve res = new reserve(PN);
                res.start(PN);

            }
        });
        내정보Button.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                userInfo uif = new userInfo(PN);
                uif.start(PN);
            }
        });
    }
    public void start(String pn)
    {
        PN=pn;
        frame.setContentPane(Jp_1);
        frame.setSize(640, 480);
        frame.setVisible(true);
        frame.setLocationRelativeTo(null);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
    }

}
