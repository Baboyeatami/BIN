/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bin;

import static java.awt.image.ImageObserver.WIDTH;
import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import javax.swing.JOptionPane;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JRDesignQuery;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.view.JasperViewer;

/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class IAPS extends javax.swing.JFrame {
   public int ID;
 Statictics stat;
 public boolean isUser;
    /**
     * Creates new form IAPS
     */
    public IAPS() {
        initComponents();
      
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jDesktopPane1 = new javax.swing.JDesktopPane();
        PictureView = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jCheckBox1 = new javax.swing.JCheckBox();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        CodeName = new javax.swing.JTextField();
        Pseudonym = new javax.swing.JTextField();
        SourceCode = new javax.swing.JTextField();
        jCheckBox2 = new javax.swing.JCheckBox();
        jPanel3 = new javax.swing.JPanel();
        jLabel10 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        PlaceBirth = new javax.swing.JTextField();
        Occupation = new javax.swing.JTextField();
        NameAddresofEmpolyere = new javax.swing.JTextField();
        Education = new javax.swing.JTextField();
        jLabel11 = new javax.swing.JLabel();
        BirthDate = new javax.swing.JTextField();
        jLabel13 = new javax.swing.JLabel();
        Position = new javax.swing.JTextField();
        jLabel17 = new javax.swing.JLabel();
        NameofSpouse = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        Name = new javax.swing.JTextField();
        jLabel20 = new javax.swing.JLabel();
        Alias = new javax.swing.JTextField();
        jPanel4 = new javax.swing.JPanel();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("INFORMANT ACTION AGENT PROFILE SHEET");
        setBounds(new java.awt.Rectangle(294, 130, 0, 0));
        setMaximumSize(new java.awt.Dimension(786, 420));
        setPreferredSize(new java.awt.Dimension(786, 457));
        setResizable(false);

        PictureView.setText("jLabel2");

        jDesktopPane1.setLayer(PictureView, javax.swing.JLayeredPane.DEFAULT_LAYER);

        javax.swing.GroupLayout jDesktopPane1Layout = new javax.swing.GroupLayout(jDesktopPane1);
        jDesktopPane1.setLayout(jDesktopPane1Layout);
        jDesktopPane1Layout.setHorizontalGroup(
            jDesktopPane1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jDesktopPane1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(PictureView, javax.swing.GroupLayout.PREFERRED_SIZE, 161, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jDesktopPane1Layout.setVerticalGroup(
            jDesktopPane1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jDesktopPane1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(PictureView, javax.swing.GroupLayout.PREFERRED_SIZE, 151, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel1.setMaximumSize(new java.awt.Dimension(554, 398));

        jCheckBox1.setText("Action Agent");

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel1.setText("Code Name");

        jLabel3.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel3.setText("Pseudonym");

        jLabel5.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel5.setText("Source Code");

        CodeName.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        CodeName.setPreferredSize(new java.awt.Dimension(162, 21));

        Pseudonym.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        Pseudonym.setPreferredSize(new java.awt.Dimension(162, 21));

        SourceCode.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        SourceCode.setPreferredSize(new java.awt.Dimension(162, 21));

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel3)
                    .addComponent(jLabel5)
                    .addComponent(jLabel1))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(Pseudonym, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(SourceCode, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(CodeName, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap(13, Short.MAX_VALUE)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(CodeName, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(Pseudonym, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(SourceCode, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
        );

        jCheckBox2.setText("Unwitting Informant");

        jPanel3.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        jLabel10.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel10.setText("Place of Birth");

        jLabel12.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel12.setText("Educational Attaiment");

        jLabel15.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel15.setText("Occupation");

        jLabel16.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel16.setText("Name and Address of Employer");

        PlaceBirth.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        PlaceBirth.setPreferredSize(new java.awt.Dimension(158, 21));

        Occupation.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        Occupation.setPreferredSize(new java.awt.Dimension(158, 21));

        NameAddresofEmpolyere.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        NameAddresofEmpolyere.setPreferredSize(new java.awt.Dimension(511, 21));

        Education.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        Education.setPreferredSize(new java.awt.Dimension(158, 21));

        jLabel11.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel11.setText("Birth Date");

        BirthDate.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        BirthDate.setPreferredSize(new java.awt.Dimension(149, 21));

        jLabel13.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel13.setText("Position");

        Position.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        Position.setPreferredSize(new java.awt.Dimension(149, 21));

        jLabel17.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel17.setText("Name of Spouse");

        NameofSpouse.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        NameofSpouse.setPreferredSize(new java.awt.Dimension(158, 21));

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel16)
                            .addComponent(jLabel14)
                            .addGroup(jPanel3Layout.createSequentialGroup()
                                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel15)
                                    .addComponent(jLabel12)
                                    .addComponent(jLabel10)
                                    .addComponent(jLabel17))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                    .addComponent(Occupation, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(Education, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(NameofSpouse, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(PlaceBirth, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel11)
                                    .addComponent(jLabel13))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(Position, javax.swing.GroupLayout.PREFERRED_SIZE, 149, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(BirthDate, javax.swing.GroupLayout.PREFERRED_SIZE, 149, javax.swing.GroupLayout.PREFERRED_SIZE))))
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addComponent(NameAddresofEmpolyere, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel10)
                    .addComponent(PlaceBirth, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel11)
                        .addComponent(BirthDate, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel15)
                    .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(Occupation, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jLabel13)
                        .addComponent(Position, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel12)
                    .addComponent(Education, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel17)
                    .addComponent(NameofSpouse, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel16)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(NameAddresofEmpolyere, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(419, 419, 419)
                .addComponent(jLabel14)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jLabel8.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel8.setText("Name");

        Name.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        Name.setMaximumSize(new java.awt.Dimension(6, 20));
        Name.setPreferredSize(new java.awt.Dimension(218, 21));

        jLabel20.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel20.setText("Alias");

        Alias.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        Alias.setPreferredSize(new java.awt.Dimension(218, 21));

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                .addComponent(jLabel8)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(jLabel20)
                                .addGap(15, 15, 15)))
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(Alias, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(Name, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jCheckBox1)
                        .addGap(18, 18, 18)
                        .addComponent(jCheckBox2))
                    .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jCheckBox1)
                    .addComponent(jCheckBox2))
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(19, 19, 19)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel8)
                            .addComponent(Name, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel20)
                            .addComponent(Alias, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, 244, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        jButton2.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jButton2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/bin/images/Apply.png"))); // NOI18N
        jButton2.setText("Update Profile");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton3.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jButton3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/bin/images/print.png"))); // NOI18N
        jButton3.setText("Print Profile");
        jButton3.setPreferredSize(new java.awt.Dimension(145, 41));
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jButton5.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jButton5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/bin/images/Close.png"))); // NOI18N
        jButton5.setText("Close");
        jButton5.setPreferredSize(new java.awt.Dimension(145, 41));
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel4Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(jButton2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jButton3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(20, 20, 20))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 43, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jButton5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(19, 19, 19))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(18, 18, 18)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jDesktopPane1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jPanel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jDesktopPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        // TODO add your handling code here:
        System.out.println(this.getBounds());
        this.dispose();
    }//GEN-LAST:event_jButton5ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        // TODO add your handling code here:
        Print();
        LogIAPS();
    }//GEN-LAST:event_jButton3ActionPerformed

     public void LogIAPS(){
  try {
            Calendar cal=  Calendar.getInstance();
            String Time,Date;
           SimpleDateFormat date=new SimpleDateFormat("yyyy/MM/d");
          SimpleDateFormat time=new SimpleDateFormat("hh:mm:ss");
          Date=date.format(cal.getTime());
           Time=time.format(cal.getTime());
            
            DBConnection.init();
            Connection c=DBConnection.getConnection();
            PreparedStatement ps;
            ResultSet rs;
            //ps=c.prepareStatement("Insert into informant_info (F_Name,M_Name,L_Name,B_Date,Age,Nationality,Religion,Mar_status,Education,Alias,Place_Birth,P_Adrress,Per_Adrress,Zipcode,S_Codification,Status,B_PAdrress,B_PreAdress,SpouseName,Gender,PictureFilePath,EntryTime,EntryDate,D_Recuitment,Provice,Mun_City,BirthCounty,E_Date,E_Time,Mode_Con,Mob_no,Email,P_Con,P_Con_num)values"+"('"+this.f_name.getText()+"','"+this.M_Name.getText()+"','"+this.Lname.getText()+"','"+dateString+"','"+this.age.getText()+"','"+this.nationalilty.getText()+"','"+this.religion.getText()+"','"+this.cb_maritals_status.getSelectedItem().toString()+"','"+this.education.getText()+"','"+this.alias.getText()+"','"+this.place_birth.getText()+"','"+this.presentADD.getText()+"','"+this.PermaentADD.getText()+"','"+this.ZipCode.getText()+"','"+this.S_Codification.getText()+"','"+this.Status_Codification.getSelectedItem().toString()+"','"+this.P_Barangay.getSelectedItem().toString()+"','"+this.Permanet_Barangay.getSelectedItem().toString()+"','"+this.Spouse.getText()+"','"+this.CBgender.getSelectedItem().toString()+"','"+imagePath+"','"+Time+"','"+Date+"','"+dateRec+"','"+Province.getText()+"','"+CbCityMun.getSelectedItem().toString()+"','"+BirthCountry.getText()+"','"+Date+"','"+Time+"','"+Mode_Contanct.getText()+"','"+Mobile_Num.getText()+"','"+Email.getText()+"','"+ContactPersonm.getText()+"','"+Mobile_Num.getText()+"')");
            ps=c.prepareStatement("Insert into logs(Act,Time,Date)values"+"('IAPS print ID number "+ID+"','"+Time+"','"+Date+"')");
            ps.execute();
            // ps=c.prepareStatement("Select * from  informant_info");
        } catch (SQLException ex) {
            System.out.println(ex);
        }
 
 }
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
       
        
        updateIAPS();
         if (stat!=null) {
            stat.LoadNameToUPDATE_INFOMANT_NUMBER(stat.LoadNames());
            stat.LoadNameOnlyData();
        }
    }//GEN-LAST:event_jButton2ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Windows".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(IAPS.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(IAPS.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(IAPS.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(IAPS.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new IAPS().setVisible(true);
            }
        });
    }
    
    
    public void Print(){
         try{
            JasperReport JR;
        JasperPrint JP;
        
       // String Q="%"+this.txtSearch.getText() +"%";
        
       // String Source="C:\\Users\\JAMIEXXX3\\Documents\\NetBeansProjects\\Phonelist\\src\\Forms\\report1.jrxml";
      
            DBConnection.init();
           JasperDesign Jd = JRXmlLoader.load(System.getProperty("user.dir")+"\\\\reports\\\\IAPSReport.jrxml");
           
            String SQL="Select * from  informant_info where idInformant_info='"+62+"'"; 
            
            JRDesignQuery JQ=new JRDesignQuery();
            JQ.setText(SQL);
            Jd.setQuery(JQ);
           JR=JasperCompileManager.compileReport(Jd);
            JP=JasperFillManager.fillReport(JR, null, DBConnection.getConnection());
          // JasperViewer.viewReport(JP, rootPaneCheckingEnabled, Locale.FRENCH);
            
            JasperViewer.viewReport(JP,false,Locale.ENGLISH);
            
            
        
        
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(this, e);
            System.out.println(e);}
    
    }
    
    
    
     public void PrintIapsLegacy(){
         try{
            JasperReport JR;
        JasperPrint JP;
        
       // String Q="%"+this.txtSearch.getText() +"%";
        
       // String Source="C:\\Users\\JAMIEXXX3\\Documents\\NetBeansProjects\\Phonelist\\src\\Forms\\report1.jrxml";
      
            DBConnection.init();
           JasperDesign Jd = JRXmlLoader.load(System.getProperty("user.dir")+"\\\\reports\\\\Legacy.jrxml");
           
            String SQL="Select * from  informant_info where idInformant_info='"+ID+"'"; 
            
            JRDesignQuery JQ=new JRDesignQuery();
            JQ.setText(SQL);
            Jd.setQuery(JQ);
           JR=JasperCompileManager.compileReport(Jd);
            JP=JasperFillManager.fillReport(JR, null, DBConnection.getConnection());
          // JasperViewer.viewReport(JP, rootPaneCheckingEnabled, Locale.FRENCH);
            
            JasperViewer.viewReport(JP,false,Locale.ENGLISH);
            
            
        
        
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(this, e);
            System.out.println(e);}
    
    }
    public void PrintSDS(){
         try{
            JasperReport JR;
        JasperPrint JP;
        
       // String Q="%"+this.txtSearch.getText() +"%";
        
       // String Source="C:\\Users\\JAMIEXXX3\\Documents\\NetBeansProjects\\Phonelist\\src\\Forms\\report1.jrxml";
      
            DBConnection.init();
           JasperDesign Jd = JRXmlLoader.load(System.getProperty("user.dir")+"\\\\reports\\\\SDCSDSReport.jrxml");
           
            String SQL="Select * from  informant_info where idInformant_info='"+ID+"'"; 
            
            JRDesignQuery JQ=new JRDesignQuery();
            JQ.setText(SQL);
            Jd.setQuery(JQ);
            JR=JasperCompileManager.compileReport(Jd);
            JP=JasperFillManager.fillReport(JR, null, DBConnection.getConnection());
          //JasperViewer.viewReport(JP, rootPaneCheckingEnabled, Locale.FRENCH);
            JasperViewer.viewReport(JP,false,Locale.ENGLISH);
             }
        catch(Exception e){
             JOptionPane.showMessageDialog(this,e);
            System.out.println(e);}
    
    }
    
    public void updateIAPS(){
           try {
          
       
   int a=JOptionPane.showConfirmDialog(this,"Are you sure you what to update the current informant record?", "Update Intelligence", JOptionPane.YES_NO_OPTION);
           
             if (a==0) {
             Connection c=DBConnection.getConnection();
            PreparedStatement ps;

            ps=c.prepareStatement("Update informant_info set idInformant_info=(?),B_Date=(?),Education=(?),Alias=(?),Place_Birth=(?),N_Employer=(?),Position=(?),CodeName=(?),Psedonym=(?),SpouseName=(?),S_Codification=(?),Employement=(?) where idInformant_info like(?)");
         //  +"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"','"++"'" + ",'"++"','"++"','"++"','"++"','"++"','"++"','"+)+"','"+"','"++"','"++"')");
            ps.setString(1,String.valueOf(ID));
            ps.setString(2,BirthDate.getText());
            ps.setString(3, Education.getText());
            ps.setString(4,Alias.getText()); 
            ps.setString(5,PlaceBirth.getText());
            ps.setString(6,NameAddresofEmpolyere.getText()); 
            ps.setString(7,Position.getText());
            ps.setString(8, CodeName.getText()); 
            ps.setString(9, Pseudonym.getText());
            ps.setString(10,NameofSpouse.getText());
            ps.setString(11,SourceCode.getText());
            ps.setString(12,Occupation.getText());
            ps.setString(13,String.valueOf(ID));  
         //this.InformantID.setText(rs.getString(42));
                System.out.println();
           // File FImage=new File(rs.getString(44));
             //String updateS =imagePath;
           // updateS=updateS.replace("\\", "/");
           //  System.out.println(imagePath+" hahahha");
          //      // System.out.println(ImageFilePath.getText());
           // ps.setString(44,ImageFilePath.getText());  
            ps.executeUpdate();

            JOptionPane.showMessageDialog(null,"Succefully Updated Informant");
            //ID=0;
            }
            
              
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e);
        }
  
    
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    public javax.swing.JTextField Alias;
    public javax.swing.JTextField BirthDate;
    public javax.swing.JTextField CodeName;
    public javax.swing.JTextField Education;
    public javax.swing.JTextField Name;
    public javax.swing.JTextField NameAddresofEmpolyere;
    public javax.swing.JTextField NameofSpouse;
    public javax.swing.JTextField Occupation;
    public javax.swing.JLabel PictureView;
    public javax.swing.JTextField PlaceBirth;
    public javax.swing.JTextField Position;
    public javax.swing.JTextField Pseudonym;
    public javax.swing.JTextField SourceCode;
    public javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton5;
    private javax.swing.JCheckBox jCheckBox1;
    private javax.swing.JCheckBox jCheckBox2;
    private javax.swing.JDesktopPane jDesktopPane1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    // End of variables declaration//GEN-END:variables
}
