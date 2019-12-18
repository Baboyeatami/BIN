/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bin;

import java.awt.HeadlessException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Timer;
import java.util.TimerTask;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class Users extends javax.swing.JFrame {
    DefaultTableModel model=new DefaultTableModel();
    String Date,Time;
    Integer ID;
    /**
     * Creates new form Users
     */
    public Users() {
        initComponents();
        model=(DefaultTableModel) jTable1.getModel();
        LoadNameOnlyData();
        RefreshTime();
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        Fname = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        Mname = new javax.swing.JTextField();
        Lname = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        Username = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        Password = new javax.swing.JPasswordField();
        Cpassword = new javax.swing.JPasswordField();
        jLabel6 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jButton6 = new javax.swing.JButton();
        jLabel7 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("User Accounts");
        setBounds(new java.awt.Rectangle(350, 173, 0, 0));
        setResizable(false);

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel1.setText("First Name");

        Fname.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel2.setText("Middle Name");

        Mname.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N

        Lname.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N

        jLabel3.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel3.setText("Last Name");

        jLabel4.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel4.setText("User Name");

        Username.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N

        jLabel5.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel5.setText("Password");

        Password.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N

        Cpassword.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N

        jLabel6.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel6.setText("Confirm Password");

        jButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/bin/images/Save.png"))); // NOI18N
        jButton1.setText("Save");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/bin/images/Accept.png"))); // NOI18N
        jButton2.setText("Update");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/bin/images/Delete.png"))); // NOI18N
        jButton3.setText("Delete");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel2)
                            .addComponent(jLabel3)
                            .addComponent(jLabel6)
                            .addComponent(jLabel5)
                            .addComponent(jLabel4))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(Fname)
                            .addComponent(Mname)
                            .addComponent(Lname)
                            .addComponent(Username)
                            .addComponent(Password)
                            .addComponent(Cpassword)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 101, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 103, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jButton3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                .addGap(22, 22, 22))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(Fname, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(Mname, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(Lname, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(Username, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(Password, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel5))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(Cpassword, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel6))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 53, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton3)
                    .addComponent(jButton2)
                    .addComponent(jButton1))
                .addContainerGap())
        );

        jTable1.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "User ID", "Name", "User Name"
            }
        ));
        jTable1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable1MouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(jTable1);

        jButton6.setIcon(new javax.swing.ImageIcon(getClass().getResource("/bin/images/Close.png"))); // NOI18N
        jButton6.setText("Close");
        jButton6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton6ActionPerformed(evt);
            }
        });

        jLabel7.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel7.setText("User Accounts");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(39, 39, 39)
                        .addComponent(jLabel7)
                        .addGap(0, 314, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButton6, javax.swing.GroupLayout.PREFERRED_SIZE, 102, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel7)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 201, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jButton6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton6ActionPerformed
        // TODO add your handling code here:
        System.out.println(this.getBounds());
        this.dispose();
        
    }//GEN-LAST:event_jButton6ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        if (!VerifyINput()) {
           

            saveUser();
           
        }
      
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        if (!Password.getText().equals(Cpassword.getText())) {
            JOptionPane.showMessageDialog(this,"Password mismatch");
        }
        else{
        UpdateUSER();
        LoadNameOnlyData();
      
        LogUpdateed();
        CleaFile();
        }
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jTable1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable1MouseClicked
        // TODO add your handling code here:
         System.out.println(String.valueOf(model.getValueAt(jTable1.getSelectedRow(), 0)));
         ID=Integer.parseInt(String.valueOf(model.getValueAt(jTable1.getSelectedRow(), 0)));
         LoadUSERDETAILS();
    }//GEN-LAST:event_jTable1MouseClicked

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        // TODO add your handling code here:
        DeleteChild();
        LoadNameOnlyData();
        
      
    }//GEN-LAST:event_jButton3ActionPerformed

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
            java.util.logging.Logger.getLogger(Users.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Users.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Users.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Users.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Users().setVisible(true);
            }
        });
    }
    
    
     public final void LoadNameOnlyData(){
    try{
     model.setRowCount(0);
    DBConnection.init();
    Connection c=DBConnection.getConnection();
    PreparedStatement ps;
    ResultSet rs;
    String admin="admin";
    
     
    
    
    ps=c.prepareStatement("Select * from  useracc where type like 'user'");
    rs=ps.executeQuery();
    while(rs.next()){
    model.addRow(new Object[]{rs.getString(1),rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4), rs.getString(6)});
    }
   
    
    } 
    catch(Exception e){System.out.println(e);
    }
    }
     
   public  void CleaFile(){
     Fname.setText("");
     Lname.setText("");
     Mname.setText("");
     Username.setText("");
     Password.setText("");
     Cpassword.setText("");
   }
     
    @SuppressWarnings({"deprecation", "deprecation", "deprecation", "deprecation"})
     public  void saveUser(){
        try {
            DBConnection.init();
            Connection c=DBConnection.getConnection();
            PreparedStatement ps;
            ResultSet rs;
            if (!Password.getText().equals(Cpassword.getText())) {
                JOptionPane.showMessageDialog(this, "Password mismatch","Confirm Password",JOptionPane.ERROR_MESSAGE);
            } else{
            
                 int a =JOptionPane.showConfirmDialog(this,"New user profile will be saved. Do you want to continue?","New User",JOptionPane.YES_NO_OPTION);
            if (a==0) {
            ps=c.prepareStatement("Insert into useracc  (Fname,Lname,Mname,Pass,Username,date,time,type)values"+"('"+Fname.getText()+"','"+Mname.getText()+"','"+Lname.getText()+"','"+Password.getText()+"','"+Username.getText()+"','"+Date+"','"+Time+"','"+"user"+"')");
                      ps.execute(); 
            JOptionPane.showMessageDialog(this, "User Saved");
        LoadNameOnlyData();
         CleaFile();
            }
            }
        } catch (SQLException ex) {
            
            System.out.println(ex);
        }
           
     
     }
     
     
    @SuppressWarnings("deprecation")
     public boolean VerifyINput(){
     try {
          DBConnection.init();
    Connection c=DBConnection.getConnection();
    PreparedStatement ps;
    ResultSet rs;
    ps=c.prepareStatement("Select * from useracc where Fname='"+Fname.getText()+"' and Mname='"+Mname.getText()+"' and Lname='"+Lname.getText()+"' and pass ='"+Password.getText()+"' and Username='"+Username.getText()+"'");
    rs=ps.executeQuery();
         if (rs.next()) {
               ID=Integer.parseInt( rs.getString(1));
               System.out.println(ID +" ID info to update");
            JOptionPane.showMessageDialog(this,"User profile already exit: ID Number "+ID);
            return true;
         }
     
     } catch (SQLException | NumberFormatException | HeadlessException e) {
         System.out.println(e);
     }
        return false;
 
 }
     
     
     public void DateandTime(){
    Calendar cal=  Calendar.getInstance();
    cal.getTime();
    SimpleDateFormat date=new SimpleDateFormat("yyyy/MM/d");
     SimpleDateFormat time=new SimpleDateFormat("hh:mm:ss");
   
    Date=(date.format(cal.getTime()));
    Time=(time.format(cal.getTime()));
    }
  public void RefreshTime(){
  TimerTask TT =new TimerTask() {
      @Override
      public void run() {
          DateandTime();
      }
  };
  
  Timer t =new Timer();
      t.scheduleAtFixedRate(TT, 1000, 1000);
  }
    
  
    @SuppressWarnings("deprecation")
  public void UpdateUSER(){
        try {
            DBConnection.init();
            Connection c=DBConnection.getConnection();
            PreparedStatement ps;
            ResultSet rs;
            
            ps=c.prepareStatement("Update useracc  set Fname=(?),Lname=(?),Mname=(?),Pass=(?),Username=(?) where idUserAcc like(?)");
             ps.setString(1, Fname.getText());
             ps.setString(2, Lname.getText());
             ps.setString(3, Mname.getText());
             ps.setString(4,Password.getText());
             ps.setString(5, Username.getText());
             ps.setString(6, ID.toString());
             ps.executeUpdate();
             
             JOptionPane.showMessageDialog(this, "User Updated!");
         
        } catch (SQLException ex) {
            System.out.println(ex);
        }
  
  }
  
  public void DeleteChild(){
    
        try {
            
  int i=JOptionPane.showConfirmDialog(this,"User account will be deleted. Do you want to continue?","User Accounts",JOptionPane.YES_NO_OPTION);
            if (i==0) {
                
         
            
            DBConnection.init();
            Connection c=DBConnection.getConnection();
            PreparedStatement ps;
            ps=c.prepareStatement("Delete from userAcc where idUserAcc=(?)");

            ps.setString(1,String.valueOf(ID));

            ps.executeUpdate();
            JOptionPane.showMessageDialog(null, "User deleted");
            CleaFile();
            LogUDELETED();
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }

    
    }
  
  
    public void LogUpdateed(){
 
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
            ps=c.prepareStatement("Insert into logs(Act,Time,Date)values"+"('Updated USER ID "+ID+"','"+Time+"','"+Date+"')");
            ps.execute();
            System.out.println("logged update");
            // ps=c.prepareStatement("Select * from  informant_info");
        } catch (SQLException ex) {
            System.out.println(ex);
        }
 
 }
    
    
      public void LogUDELETED(){
 
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
            ps=c.prepareStatement("Insert into logs(Act,Time,Date)values"+"('DELETED USER ID "+ID+"','"+Time+"','"+Date+"')");
            ps.execute();
            System.out.println("logged update");
            // ps=c.prepareStatement("Select * from  informant_info");
        } catch (SQLException ex) {
            System.out.println(ex);
        }
 
 }
  
  
  public  void LoadUSERDETAILS(){
      
        try {
            DBConnection.init();
            Connection c=DBConnection.getConnection();
            PreparedStatement ps;
            ResultSet rs;
            String admin="admin";
            ps=c.prepareStatement("Select * from  useracc where idUserAcc like '"+ID+"'");
            rs=ps.executeQuery();
            if (rs.next()) {
                    Fname.setText(rs.getString(2));
                    Lname.setText(rs.getString(4));
                    Mname.setText(rs.getString(3));
                    Password.setText(rs.getString(5));
                    Username.setText(rs.getString(6));
                   
            }
           
            rs=ps.executeQuery();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
  
  
  
  }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPasswordField Cpassword;
    private javax.swing.JTextField Fname;
    private javax.swing.JTextField Lname;
    private javax.swing.JTextField Mname;
    private javax.swing.JPasswordField Password;
    private javax.swing.JTextField Username;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton6;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    // End of variables declaration//GEN-END:variables
}