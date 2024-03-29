/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bin;

//import com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
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
public class Statictics extends javax.swing.JFrame {
    DefaultTableModel model=new DefaultTableModel();
    String B_Name;
    BarangayDetails barangayDetails;
    SimpleDateFormat df;
    String dateF,dateT;
    Boolean isPrinted;
    public boolean isUser;
    /**
     * Creates new form Statictics
     */
    public Statictics() {
        initComponents();
        model=(DefaultTableModel) jTable1.getModel();
        
         LoadNameToUPDATE_INFOMANT_NUMBER(LoadNames());
        // LoadNameOnlyData();
         LoadTotalInforamnts();
         LoadNameOnlyData();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel2 = new javax.swing.JPanel();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jButton7 = new javax.swing.JButton();
        printDatails = new javax.swing.JButton();
        jButton1 = new javax.swing.JButton();
        jButton8 = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jPanel1 = new javax.swing.JPanel();
        jLabel14 = new javax.swing.JLabel();
        dateFrom5 = new com.toedter.calendar.JDateChooser();
        DateTO5 = new com.toedter.calendar.JDateChooser();
        jToggleButton6 = new javax.swing.JToggleButton();
        jLabel15 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        total = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("BIN Statistics");
        setBounds(new java.awt.Rectangle(321, 82, 0, 0));

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        jButton4.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jButton4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/bin/images/Refresh.png"))); // NOI18N
        jButton4.setText(" Refresh List");
        jButton4.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jButton4.setMaximumSize(new java.awt.Dimension(137, 41));
        jButton4.setPreferredSize(new java.awt.Dimension(137, 41));
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        jButton5.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jButton5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/bin/images/About.png"))); // NOI18N
        jButton5.setText("View Informants");
        jButton5.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jButton5.setMaximumSize(new java.awt.Dimension(137, 41));
        jButton5.setPreferredSize(new java.awt.Dimension(137, 41));
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        jButton7.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jButton7.setIcon(new javax.swing.ImageIcon(getClass().getResource("/bin/images/Close.png"))); // NOI18N
        jButton7.setText("Close");
        jButton7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton7ActionPerformed(evt);
            }
        });

        printDatails.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        printDatails.setIcon(new javax.swing.ImageIcon(getClass().getResource("/bin/images/print2.png"))); // NOI18N
        printDatails.setText("Print List");
        printDatails.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        printDatails.setMaximumSize(new java.awt.Dimension(137, 41));
        printDatails.setPreferredSize(new java.awt.Dimension(137, 41));
        printDatails.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                printDatailsActionPerformed(evt);
            }
        });

        jButton1.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/bin/images/print.png"))); // NOI18N
        jButton1.setText("Print Entire List");
        jButton1.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jButton1.setMaximumSize(new java.awt.Dimension(137, 41));
        jButton1.setMinimumSize(new java.awt.Dimension(89, 23));
        jButton1.setPreferredSize(new java.awt.Dimension(137, 41));
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton8.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jButton8.setIcon(new javax.swing.ImageIcon(getClass().getResource("/bin/images/print.png"))); // NOI18N
        jButton8.setText("Source of Codification");
        jButton8.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jButton8.setMaximumSize(new java.awt.Dimension(100, 41));
        jButton8.setPreferredSize(new java.awt.Dimension(100, 41));
        jButton8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton8ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jButton5, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 187, Short.MAX_VALUE)
                    .addComponent(jButton4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(printDatails, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jButton1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jButton7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jButton8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(28, 28, 28)
                .addComponent(jButton5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(5, 5, 5)
                .addComponent(jButton4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(printDatails, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton8, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jButton7)
                .addContainerGap())
        );

        jTable1.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Barangay ID", "Barangay", "Number of Informants"
            }
        ));
        jTable1.getColumnModel().getColumn(0).setPreferredWidth(50);
        jTable1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable1MouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(jTable1);

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        jLabel14.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel14.setText("From");

        dateFrom5.setDateFormatString("yyyy/MM/d ");
        dateFrom5.setMinSelectableDate(new java.util.Date(-62135737139000L));

        DateTO5.setDateFormatString("yyyy/MM/d ");

        jToggleButton6.setIcon(new javax.swing.ImageIcon(getClass().getResource("/bin/images/search2.png"))); // NOI18N
        jToggleButton6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jToggleButton6jToggleButton1ActionPerformed(evt);
            }
        });

        jLabel15.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel15.setText("To");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel14)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(dateFrom5, javax.swing.GroupLayout.PREFERRED_SIZE, 105, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel15, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(10, 10, 10)
                .addComponent(DateTO5, javax.swing.GroupLayout.PREFERRED_SIZE, 105, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jToggleButton6, javax.swing.GroupLayout.PREFERRED_SIZE, 36, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(41, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(dateFrom5, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(DateTO5, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel14, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel15, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jToggleButton6)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 16)); // NOI18N
        jLabel2.setText("Total Number of Informants");

        total.setFont(new java.awt.Font("Tahoma", 1, 20)); // NOI18N
        total.setForeground(new java.awt.Color(255, 0, 0));
        total.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 522, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGap(5, 5, 5))
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(total, javax.swing.GroupLayout.PREFERRED_SIZE, 69, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jLabel2))
                    .addComponent(total, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 490, Short.MAX_VALUE)
                    .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTable1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable1MouseClicked
        // TODO add your handling code here:
          System.out.println(String.valueOf(model.getValueAt(jTable1.getSelectedRow(), 1)));
         B_Name=String.valueOf(model.getValueAt(jTable1.getSelectedRow(), 1));
         //barangayDetails.B_name=B_Name;
    }//GEN-LAST:event_jTable1MouseClicked

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        // TODO add your handling code here:
        LoadNameToUPDATE_INFOMANT_NUMBER(LoadNames());
        LoadNameOnlyData();
        LoadTotalInforamnts();
    }//GEN-LAST:event_jButton4ActionPerformed

    private void jButton7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton7ActionPerformed
        // TODO add your handling code here:
        System.out.println(this.getBounds());
        this.dispose();
    }//GEN-LAST:event_jButton7ActionPerformed

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        // TODO add your handling code here:
        B_Name=String.valueOf(model.getValueAt(jTable1.getSelectedRow(), 1));
        if (barangayDetails==null) {
            barangayDetails=new BarangayDetails();
        }
        barangayDetails.isUser=isUser;
        barangayDetails.B_name=B_Name;
        barangayDetails.BarangayName.setText(B_Name);
        barangayDetails.LoadNameBarangay();
        barangayDetails.setVisible(true);
    }//GEN-LAST:event_jButton5ActionPerformed

    private void printDatailsActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_printDatailsActionPerformed
        // TODO add your handling code here:
        if (DateTO5.getDate()==null && dateFrom5.getDate()==null || DateTO5.getDate()==null || dateFrom5.getDate()==null) {
              JOptionPane.showMessageDialog(this,"Date Invalid. Please supply valid date");
        }else{
                PrintBarangayDetails();
                LogPrintDetyails();
        }
     
    }//GEN-LAST:event_printDatailsActionPerformed

    private void jToggleButton6jToggleButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jToggleButton6jToggleButton1ActionPerformed

        try {
            // TODO add your handling code here:

            df = new SimpleDateFormat("yyyy/MM/d ");
            dateF = String.valueOf(df.format(dateFrom5.getDate()));
            dateT = String.valueOf(df.format(DateTO5.getDate()));
            Date myDateFrom = df.parse(dateF);
            Date myDateTO = df.parse(dateT);
            System.out.println(dateF + "  from");
            System.out.println(dateT + "  to");

            LoadNameToUPDATE_INFOMANT_NUMBER_DateREC(LoadNames());
            LoadNameOnlyData();
            LoadTotalInforamnts();
            
            isPrinted = true;

        } catch (ParseException ex) {
            System.out.println(ex);
        }
    }//GEN-LAST:event_jToggleButton6jToggleButton1ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
         LoadNameToUPDATE_INFOMANT_NUMBER(LoadNames());
        LoadNameOnlyData();
        LoadTotalInforamnts();
        PrintBarangayDetails_ALL();
        LogPrintAllDetails();
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton8ActionPerformed
         PrintSourceOfCodifactionALL();
         LogPrintSourceCodificationALL();
    }//GEN-LAST:event_jButton8ActionPerformed

    @SuppressWarnings({"unchecked", "unchecked"})
      public void PrintSourceOfCodifactionALL() {
        try {
            JasperReport JR;
            JasperPrint JP;

       // String Q="%"+this.txtSearch.getText() +"%";
            // String Source="C:\\Users\\JAMIEXXX3\\Documents\\NetBeansProjects\\Phonelist\\src\\Forms\\report1.jrxml";
            System.out.println("ALL Print Source Codification");
            DBConnection.init();
            JasperDesign Jd = JRXmlLoader.load(System.getProperty("user.dir")+"\\\\reports\\\\SourceCodeALL.jrxml");

            String SQL = "Select * from barangaystats";

            JRDesignQuery JQ = new JRDesignQuery();
            JQ.setText(SQL);
            Jd.setQuery(JQ);
            JR = JasperCompileManager.compileReport(Jd);
            HashMap m = new HashMap<>();
             m.put("parameter1","        List of all source of codification ");
            JP = JasperFillManager.fillReport(JR, m, DBConnection.getConnection());
          // JasperViewer.viewReport(JP, rootPaneCheckingEnabled, Locale.FRENCH);

            JasperViewer.viewReport(JP, false, Locale.ENGLISH);

        } catch (Exception e) {
            JOptionPane.showMessageDialog(this, e);
            System.out.println(e);
        }

    }
      
         public void LogPrintSourceCodificationALL(){
  try {
            Calendar cal=  Calendar.getInstance();
            String Time,Date;
           SimpleDateFormat date=new SimpleDateFormat("yyyy/MM/d");
           SimpleDateFormat time=new SimpleDateFormat("HH:mm:ss");
           Date=date.format(cal.getTime());
           Time=time.format(cal.getTime());
            
            DBConnection.init();
            Connection c=DBConnection.getConnection();
            PreparedStatement ps;
            ResultSet rs;
            //ps=c.prepareStatement("Insert into informant_info (F_Name,M_Name,L_Name,B_Date,Age,Nationality,Religion,Mar_status,Education,Alias,Place_Birth,P_Adrress,Per_Adrress,Zipcode,S_Codification,Status,B_PAdrress,B_PreAdress,SpouseName,Gender,PictureFilePath,EntryTime,EntryDate,D_Recuitment,Provice,Mun_City,BirthCounty,E_Date,E_Time,Mode_Con,Mob_no,Email,P_Con,P_Con_num)values"+"('"+this.f_name.getText()+"','"+this.M_Name.getText()+"','"+this.Lname.getText()+"','"+dateString+"','"+this.age.getText()+"','"+this.nationalilty.getText()+"','"+this.religion.getText()+"','"+this.cb_maritals_status.getSelectedItem().toString()+"','"+this.education.getText()+"','"+this.alias.getText()+"','"+this.place_birth.getText()+"','"+this.presentADD.getText()+"','"+this.PermaentADD.getText()+"','"+this.ZipCode.getText()+"','"+this.S_Codification.getText()+"','"+this.Status_Codification.getSelectedItem().toString()+"','"+this.P_Barangay.getSelectedItem().toString()+"','"+this.Permanet_Barangay.getSelectedItem().toString()+"','"+this.Spouse.getText()+"','"+this.CBgender.getSelectedItem().toString()+"','"+imagePath+"','"+Time+"','"+Date+"','"+dateRec+"','"+Province.getText()+"','"+CbCityMun.getSelectedItem().toString()+"','"+BirthCountry.getText()+"','"+Date+"','"+Time+"','"+Mode_Contanct.getText()+"','"+Mobile_Num.getText()+"','"+Email.getText()+"','"+ContactPersonm.getText()+"','"+Mobile_Num.getText()+"')");
            ps=c.prepareStatement("Insert into logs(Act,Time,Date)values"+"('Print ALL source of cofication    ','"+Time+"','"+Date+"')");
            ps.execute();
            // ps=c.prepareStatement("Select * from  informant_info");
        } catch (SQLException ex) {
            System.out.println(ex);
        }
 
 }
    
    
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
            java.util.logging.Logger.getLogger(Statictics.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Statictics.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Statictics.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Statictics.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Statictics().setVisible(true);
            }
        });
    }
    
    
    
    
     public void LoadNameOnlyData(){
    try{
     model.setRowCount(0);
    DBConnection.init();
    Connection c=DBConnection.getConnection();
    PreparedStatement ps;
    ResultSet rs;
    ps=c.prepareStatement("Select * from  barangaystats");
    rs=ps.executeQuery();
    while(rs.next()){
    model.addRow(new Object[]{rs.getString(1), rs.getString(2) ,rs.getString(3)});
    }
   
    
    } 
    catch(Exception e){System.out.println(e);
    }
    }
     
     public void LoadTotalInforamnts(){
    try{
    // model.setRowCount(0);
    DBConnection.init();
    Connection c=DBConnection.getConnection();
    PreparedStatement ps;
    ResultSet rs;
    ps=c.prepareStatement("Select * from  barangaystats");
    rs=ps.executeQuery();
    int i=0;
    while(rs.next()){
        i=i+Integer.parseInt(rs.getString(3));
        //System.out.println( rs.getString(3));
        System.out.println("Value"+i);
    }
   
        System.out.println("Total "+i);
        total.setText(String.valueOf(i));
    } 
    catch(SQLException | NumberFormatException e){System.out.println(e);
    }
    }
     
     
   public  void NewBarangay(){
       try {
           
      
       DBConnection.init();
            Connection c =DBConnection.getConnection();
            PreparedStatement ps;
            ResultSet rs;
            String BName=JOptionPane.showInputDialog("Enter Barangay Name");
      ps=c.prepareStatement("Insert into barangaystats (Name)values"+"('"+BName+"')");
                  //System.out.println(ImageFilePath.getText().toString()); 
            ps.execute(); 
            
            JOptionPane.showMessageDialog(this, "Barangay saved");
            
             } catch (Exception e) {
                 
                 System.out.println(e);}}
   
   
   
   
    public void UpdateStats(){
          try {  
              
           String num = null;   
         Connection c=DBConnection.getConnection();
         PreparedStatement ps;
         ps=c.prepareStatement("Update barangaystats set InformantNumber=(?)  where Name like(?)");
        
          ps.setString(3,num);
          ps.executeUpdate();
          
          } catch (SQLException ex) {
              System.out.println(ex);
            }
               
       
       }
    
    
     public void LoadNameToUPDATE_INFOMANT_NUMBER(String[] name){
    try{
    DBConnection.init();
    Connection c=DBConnection.getConnection();
    PreparedStatement ps;
    ResultSet rs;
        for (int i = 0; i < 25; i++) {
    ps=c.prepareStatement("Select * from  informant_info where B_PAdrress='"+name[i]+"'");
    rs=ps.executeQuery();
      int ii=0;
            //System.out.println(name[i]);
    while(rs.next()){
        ii++;
    }
    
    
     PreparedStatement psB;
         psB=c.prepareStatement("Update barangaystats set InformantNumber=(?)  where Name like(?)");
          psB.setString(1,String.valueOf(ii));
          psB.setString(2,name[i]);
          psB.executeUpdate();
        System.out.println(name[i]+"  "+ii);
        }
    } 
    catch(Exception e){System.out.println(e);
    }
    }
    
     public void LoadNameToUPDATE_INFOMANT_NUMBER_DateREC(String[] name){
    try{
    DBConnection.init();
    Connection c=DBConnection.getConnection();
    PreparedStatement ps;
    ResultSet rs;
        for (int i = 0; i < 25; i++) {
    ps=c.prepareStatement("Select * from  informant_info where B_PAdrress='"+name[i]+"' and D_Recuitment between '"+dateF+"' and '"+dateT+"'");
    rs=ps.executeQuery();
      int ii=0;
            //System.out.println(name[i]);
    while(rs.next()){
        ii++;
    }
    
    
     PreparedStatement psB;
         psB=c.prepareStatement("Update barangaystats set InformantNumber=(?)  where Name like(?)");
          psB.setString(1,String.valueOf(ii));
          psB.setString(2,name[i]);
          psB.executeUpdate();
        System.out.println(name[i]+"  "+ii);
        }
    } 
    catch(Exception e){System.out.println(e);
    }
    }
     
     
     
     public String[] LoadNames(){
    String names[]=new String[25];
    try{
   
    DBConnection.init();
    Connection c=DBConnection.getConnection();
    PreparedStatement ps;
    ResultSet rs;
    ps=c.prepareStatement("Select * from barangaystats ");
    rs=ps.executeQuery();
    int i=0;
   
    while(rs.next()){
        names[i]=rs.getString(2);
         // System.out.println( names[i]=rs.getString(2));
           i++;
           }
    
   
 }   
    
    catch(Exception e){System.out.println(e);
    }
     return names;
    }
     
    @SuppressWarnings("unchecked")
       public void PrintBarangayDetails(){
         try{
            JasperReport JR;
            JasperPrint JP;
        
       // String Q="%"+this.txtSearch.getText() +"%";
        
       // String Source="C:\\Users\\JAMIEXXX3\\Documents\\NetBeansProjects\\Phonelist\\src\\Forms\\report1.jrxml";
            // System.out.println(B_name+" Print");
            DBConnection.init();
           JasperDesign Jd = JRXmlLoader.load(System.getProperty("user.dir")+"\\\\reports\\\\Barangay_stats.jrxml");
           
            String SQL="select * from barangaystats"; 
            
            JRDesignQuery JQ=new JRDesignQuery();
            JQ.setText(SQL);
            Jd.setQuery(JQ);
            
           JR=JasperCompileManager.compileReport(Jd);
            //bJP=JasperFillManager.fillReport(JR, null, DBConnection.getConnection());
          // JasperViewer.viewReport(JP, rootPaneCheckingEnabled, Locale.FRENCH);
              df=new SimpleDateFormat("MMMMMMMM d, yyyy");
            dateF=String.valueOf(df.format(dateFrom5.getDate()));
            dateT=String.valueOf(df.format(DateTO5.getDate()));
             HashMap m = new HashMap<>();      
            m.put("parameter1", "Covered Period:"+dateF+"  To  "+dateT);
            JP=JasperFillManager.fillReport(JR, m, DBConnection.getConnection());
            //m.put("Prepared",prepa);
           //m.put("Noted", note);
            JasperViewer.viewReport(JP,false,Locale.ENGLISH);
            
            
        
        
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(this, e);
            System.out.println(e);}
    
    }
       
    @SuppressWarnings({"unchecked", "unchecked", "unchecked", "unchecked", "unchecked"})
      public void PrintBarangayDetails_ALL(){
         try{
            JasperReport JR;
            JasperPrint JP;
        
       // String Q="%"+this.txtSearch.getText() +"%";
        
       // String Source="C:\\Users\\JAMIEXXX3\\Documents\\NetBeansProjects\\Phonelist\\src\\Forms\\report1.jrxml";
            // System.out.println(B_name+" Print");
            DBConnection.init();
           JasperDesign Jd = JRXmlLoader.load(System.getProperty("user.dir")+"\\\\reports\\\\Barangay_stats.jrxml");
           
            String SQL="select * from barangaystats"; 
            
            JRDesignQuery JQ=new JRDesignQuery();
            JQ.setText(SQL);
            Jd.setQuery(JQ);
            
           JR=JasperCompileManager.compileReport(Jd);
            //bJP=JasperFillManager.fillReport(JR, null, DBConnection.getConnection());
          // JasperViewer.viewReport(JP, rootPaneCheckingEnabled, Locale.FRENCH);
              df=new SimpleDateFormat("MMMMMMMM d, yyyy");
           // dateF=String.valueOf(df.format(dateFrom5.getDate()));
           // dateT=String.valueOf(df.format(DateTO5.getDate()));
             HashMap m = new HashMap<>();      
            m.put("parameter1","                                  All Informants");
            JP=JasperFillManager.fillReport(JR,m,DBConnection.getConnection());
            //m.put("Prepared",prepa);
           //m.put("Noted", note);
            JasperViewer.viewReport(JP,false,Locale.ENGLISH);
            
            
        
        
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(this, e);
            System.out.println(e);}
    
    }
      
      
      public void LogPrintDetyails(){
   try {   
            Calendar cal=  Calendar.getInstance();
            String Time,Date;
            SimpleDateFormat date=new SimpleDateFormat("yyyy/MM/d");
          SimpleDateFormat time=new SimpleDateFormat("HH:mm:ss");
          Date=date.format(cal.getTime());
           Time=time.format(cal.getTime());
            
            DBConnection.init();
            Connection c=DBConnection.getConnection();
            PreparedStatement ps;
            ResultSet rs;
            //ps=c.prepareStatement("Insert into informant_info (F_Name,M_Name,L_Name,B_Date,Age,Nationality,Religion,Mar_status,Education,Alias,Place_Birth,P_Adrress,Per_Adrress,Zipcode,S_Codification,Status,B_PAdrress,B_PreAdress,SpouseName,Gender,PictureFilePath,EntryTime,EntryDate,D_Recuitment,Provice,Mun_City,BirthCounty,E_Date,E_Time,Mode_Con,Mob_no,Email,P_Con,P_Con_num)values"+"('"+this.f_name.getText()+"','"+this.M_Name.getText()+"','"+this.Lname.getText()+"','"+dateString+"','"+this.age.getText()+"','"+this.nationalilty.getText()+"','"+this.religion.getText()+"','"+this.cb_maritals_status.getSelectedItem().toString()+"','"+this.education.getText()+"','"+this.alias.getText()+"','"+this.place_birth.getText()+"','"+this.presentADD.getText()+"','"+this.PermaentADD.getText()+"','"+this.ZipCode.getText()+"','"+this.S_Codification.getText()+"','"+this.Status_Codification.getSelectedItem().toString()+"','"+this.P_Barangay.getSelectedItem().toString()+"','"+this.Permanet_Barangay.getSelectedItem().toString()+"','"+this.Spouse.getText()+"','"+this.CBgender.getSelectedItem().toString()+"','"+imagePath+"','"+Time+"','"+Date+"','"+dateRec+"','"+Province.getText()+"','"+CbCityMun.getSelectedItem().toString()+"','"+BirthCountry.getText()+"','"+Date+"','"+Time+"','"+Mode_Contanct.getText()+"','"+Mobile_Num.getText()+"','"+Email.getText()+"','"+ContactPersonm.getText()+"','"+Mobile_Num.getText()+"')");
            ps=c.prepareStatement("Insert into logs(Act,Time,Date)values"+"('Print barangay statistic from "+dateF+" to "+dateT+" ','"+Time+"','"+Date+"')");
            ps.execute();
            // ps=c.prepareStatement("Select * from  informant_info");
        } catch (SQLException ex) {
            System.out.println(ex);
        }
 }
      
   public void LogPrintAllDetails(){
   try {
            Calendar cal=  Calendar.getInstance();
            String Time,Date;
            SimpleDateFormat date=new SimpleDateFormat("yyyy/MM/d");
          SimpleDateFormat time=new SimpleDateFormat("HH:mm:ss");
          Date=date.format(cal.getTime());
           Time=time.format(cal.getTime());
            
            DBConnection.init();
            Connection c=DBConnection.getConnection();
            PreparedStatement ps;
            ResultSet rs;
            //ps=c.prepareStatement("Insert into informant_info (F_Name,M_Name,L_Name,B_Date,Age,Nationality,Religion,Mar_status,Education,Alias,Place_Birth,P_Adrress,Per_Adrress,Zipcode,S_Codification,Status,B_PAdrress,B_PreAdress,SpouseName,Gender,PictureFilePath,EntryTime,EntryDate,D_Recuitment,Provice,Mun_City,BirthCounty,E_Date,E_Time,Mode_Con,Mob_no,Email,P_Con,P_Con_num)values"+"('"+this.f_name.getText()+"','"+this.M_Name.getText()+"','"+this.Lname.getText()+"','"+dateString+"','"+this.age.getText()+"','"+this.nationalilty.getText()+"','"+this.religion.getText()+"','"+this.cb_maritals_status.getSelectedItem().toString()+"','"+this.education.getText()+"','"+this.alias.getText()+"','"+this.place_birth.getText()+"','"+this.presentADD.getText()+"','"+this.PermaentADD.getText()+"','"+this.ZipCode.getText()+"','"+this.S_Codification.getText()+"','"+this.Status_Codification.getSelectedItem().toString()+"','"+this.P_Barangay.getSelectedItem().toString()+"','"+this.Permanet_Barangay.getSelectedItem().toString()+"','"+this.Spouse.getText()+"','"+this.CBgender.getSelectedItem().toString()+"','"+imagePath+"','"+Time+"','"+Date+"','"+dateRec+"','"+Province.getText()+"','"+CbCityMun.getSelectedItem().toString()+"','"+BirthCountry.getText()+"','"+Date+"','"+Time+"','"+Mode_Contanct.getText()+"','"+Mobile_Num.getText()+"','"+Email.getText()+"','"+ContactPersonm.getText()+"','"+Mobile_Num.getText()+"')");
            ps=c.prepareStatement("Insert into logs(Act,Time,Date)values"+"('Print barangay statistic','"+Time+"','"+Date+"')");
            ps.execute();
            // ps=c.prepareStatement("Select * from  informant_info");
        } catch (SQLException ex) {
            System.out.println(ex);
        }
 }      
      
       
  private void LoadshowCoveredPeriod() {
        
        
        
        
        }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.toedter.calendar.JDateChooser DateTO5;
    private com.toedter.calendar.JDateChooser dateFrom5;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton7;
    private javax.swing.JButton jButton8;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JToggleButton jToggleButton6;
    private javax.swing.JButton printDatails;
    private javax.swing.JLabel total;
    // End of variables declaration//GEN-END:variables
}




