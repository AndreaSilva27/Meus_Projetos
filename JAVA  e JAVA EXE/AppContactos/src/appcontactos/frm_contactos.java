package appcontactos;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.print.PageFormat;
import java.awt.print.Printable;
import static java.awt.print.Printable.NO_SUCH_PAGE;
import static java.awt.print.Printable.PAGE_EXISTS;
import java.awt.print.PrinterException;
import java.awt.print.PrinterJob;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.DefaultListModel;
import javax.swing.JOptionPane;



public class frm_contactos extends javax.swing.JFrame {

    DefaultListModel numero = new DefaultListModel();
    DefaultListModel nome = new DefaultListModel();
    DefaultListModel mail = new DefaultListModel();
    int contador = 0;
    
    public frm_contactos() {
        initComponents();
        desabilita_botoes();
        // centrar o form
        setLocationRelativeTo(null);
    }

      class Imprimir implements Printable{
        @Override
        public int print(Graphics g, PageFormat f,int pageIndex){
            if (pageIndex==0){
                Font f1=new Font("Arial",Font.BOLD,12);
                Font f2=new Font("Arial",Font.PLAIN,10);
                Font f3=new Font("Arial",Font.PLAIN,8);
                Font f4=new Font("Calibri",Font.PLAIN,6);
                g.setFont(f1);
                g.setColor(Color.red);
                g.drawRect(78, 80, 165, 15);
                g.setColor(Color.BLACK);
                g.drawString("Agenda::Registos",80,91);
                
                g.setFont(f4);
                g.drawString("Registos inseridos",80,108);
                g.setFont(f3);
                g.drawString("N.", 80, 125);
                g.drawString("Nome", 100, 125);
                g.drawString("Mail", 250, 125);
                g.setFont(f2); 
                g.drawLine(80, 130, 350, 130);
                    
                int y=150;
                for(int i=0;i<numero.getSize();i++){
                    g.drawString(numero.getElementAt(i).toString(), 80,y );
                    g.drawString(nome.getElementAt(i).toString(), 100,y );
                    g.drawString(mail.getElementAt(i).toString(), 250,y );
                    y+=10;
                }
                return PAGE_EXISTS;
            }
            else{
                return NO_SUCH_PAGE;
            }
        }
    }
    public void desabilita_botoes() {
       btn_guardar.setEnabled(false);
       btn_guardar_reg.setEnabled(false);
       btn_eliminar.setEnabled(false);
       btn_imprimir.setEnabled(false);
       btn_cancelar.setEnabled(false);
       txt_id.setEnabled(false);
       txt_nome.setEnabled(false);
       txt_mail.setEnabled(false);
       
    }
    public void habilita_botoes() {
       btn_guardar.setEnabled(true);
       btn_cancelar.setEnabled(true);
       txt_nome.setEnabled(true);
       txt_mail.setEnabled(true);
        
    }
    public void adicionar(String nome, String mail, int numero) {
      
        
        
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel4 = new javax.swing.JPanel();
        btn_novo = new javax.swing.JButton();
        btn_eliminar = new javax.swing.JButton();
        btn_imprimir = new javax.swing.JButton();
        bnt_sair = new javax.swing.JButton();
        btn_guardar_reg = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        list_numero = new javax.swing.JList<>();
        jLabel4 = new javax.swing.JLabel();
        jScrollPane3 = new javax.swing.JScrollPane();
        list_nome = new javax.swing.JList<>();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jScrollPane4 = new javax.swing.JScrollPane();
        list_mail = new javax.swing.JList<>();
        jPanel2 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        txt_id = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        txt_nome = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        txt_mail = new javax.swing.JTextField();
        btn_guardar = new javax.swing.JButton();
        btn_cancelar = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Agenda");
        setAlwaysOnTop(true);

        btn_novo.setText("Novo");
        btn_novo.setToolTipText("");
        btn_novo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_novoActionPerformed(evt);
            }
        });

        btn_eliminar.setText("Eliminar");
        btn_eliminar.setToolTipText("");
        btn_eliminar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_eliminarActionPerformed(evt);
            }
        });

        btn_imprimir.setText("Imprimir");
        btn_imprimir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_imprimirActionPerformed(evt);
            }
        });

        bnt_sair.setText("Sair");
        bnt_sair.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bnt_sairActionPerformed(evt);
            }
        });

        btn_guardar_reg.setText("Guardar registo selecionado");
        btn_guardar_reg.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_guardar_regActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel4Layout.createSequentialGroup()
                        .addComponent(btn_guardar_reg, javax.swing.GroupLayout.PREFERRED_SIZE, 243, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(jPanel4Layout.createSequentialGroup()
                        .addComponent(btn_novo, javax.swing.GroupLayout.PREFERRED_SIZE, 67, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(btn_eliminar)
                        .addGap(18, 18, 18)
                        .addComponent(btn_imprimir)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(bnt_sair, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btn_novo)
                    .addComponent(btn_eliminar)
                    .addComponent(btn_imprimir)
                    .addComponent(bnt_sair))
                .addGap(18, 18, 18)
                .addComponent(btn_guardar_reg)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jLabel1.setText("Agenda");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabel1)
        );

        list_numero.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        list_numero.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                list_numeroMouseReleased(evt);
            }
        });
        list_numero.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                list_numeroKeyReleased(evt);
            }
        });
        jScrollPane2.setViewportView(list_numero);

        jLabel4.setText("Número");

        list_nome.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                list_nomeMouseReleased(evt);
            }
        });
        list_nome.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                list_nomeKeyReleased(evt);
            }
        });
        jScrollPane3.setViewportView(list_nome);

        jLabel6.setText("Nome");

        jLabel7.setText("Mail");

        list_mail.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                list_mailMouseReleased(evt);
            }
        });
        list_mail.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                list_mailKeyReleased(evt);
            }
        });
        jScrollPane4.setViewportView(list_mail);

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 131, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 182, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(70, 70, 70)
                        .addComponent(jLabel7))
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 61, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 234, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(14, 14, 14)
                        .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(jLabel6)
                    .addComponent(jLabel7))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane3, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 365, Short.MAX_VALUE)
                    .addComponent(jScrollPane4, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jScrollPane2)))
        );

        jPanel2.setBackground(new java.awt.Color(255, 255, 102));

        jLabel2.setText("Número");

        jLabel3.setText("Nome");

        jLabel5.setText("Mail");

        btn_guardar.setText("Guardar");
        btn_guardar.setToolTipText("");
        btn_guardar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_guardarActionPerformed(evt);
            }
        });

        btn_cancelar.setText("Cancelar");
        btn_cancelar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_cancelarActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel2, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jLabel3, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jLabel5, javax.swing.GroupLayout.Alignment.TRAILING))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txt_nome)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(txt_id, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(0, 0, Short.MAX_VALUE))
                            .addComponent(txt_mail)))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(btn_guardar)
                        .addGap(18, 18, 18)
                        .addComponent(btn_cancelar)
                        .addGap(0, 57, Short.MAX_VALUE)))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(txt_id, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(txt_nome, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(txt_mail, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(36, 36, 36)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btn_guardar)
                    .addComponent(btn_cancelar))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(22, 22, 22))
                    .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_novoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_novoActionPerformed
    habilita_botoes();
    contador++;
    txt_id.setText(Integer.toString(contador));
    txt_nome.setText("");
    txt_mail.setText("");
    btn_novo.setEnabled(false);
    }//GEN-LAST:event_btn_novoActionPerformed

    private void btn_eliminarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_eliminarActionPerformed
    if (list_numero.getSelectedIndex()<0){
        JOptionPane.showMessageDialog(this, 
                "Selecione um registo",
                "Agenda",
                JOptionPane.INFORMATION_MESSAGE);
    } 
    else{
        numero.remove(list_numero.getSelectedIndex());
        nome.remove(list_nome.getSelectedIndex());
        mail.remove(list_mail.getSelectedIndex());
        // lista vazia
        if (numero.getSize()==0){
            btn_eliminar.setEnabled(false);
            btn_imprimir.setEnabled(false);
            btn_guardar_reg.setEnabled(false);
        }
    }
    }//GEN-LAST:event_btn_eliminarActionPerformed

    private void btn_imprimirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_imprimirActionPerformed
    PrinterJob j=PrinterJob.getPrinterJob();
    j.setPrintable(new Imprimir());
    j.printDialog();
    
    try{
        j.print();
    }
    catch(PrinterException e){}
    
    }//GEN-LAST:event_btn_imprimirActionPerformed

    private void bnt_sairActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bnt_sairActionPerformed
    System.exit(0);
    }//GEN-LAST:event_bnt_sairActionPerformed

    private void btn_guardar_regActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_guardar_regActionPerformed
    if (list_numero.getSelectedIndex()<0){
        JOptionPane.showMessageDialog(this, 
                "Selecione um registo",
                "Agenda",
                JOptionPane.INFORMATION_MESSAGE);
    } 
    else{
        ligacaoMySql bd=new ligacaoMySql();
        bd.criarLigacaoMySql();
        try{
            Connection cn=bd.criarLigacaoMySql();
            Statement st=cn.createStatement();
            // inserir
            String sql="insert into contactos (nome,mail) values('"+
                    nome.getElementAt(list_nome.getSelectedIndex())+"','"
                    +mail.getElementAt(list_mail.getSelectedIndex())+"')";        
            st.executeUpdate(sql);
            JOptionPane.showMessageDialog(this,
                    "Registo inserido",
                    "Agenda",
                    JOptionPane.INFORMATION_MESSAGE);
        }
        catch(SQLException e){
            JOptionPane.showMessageDialog(this,
                    "Erro ao inserir o registo",
                    "Agenda",
                    JOptionPane.ERROR_MESSAGE);            
        }
    }  
    }//GEN-LAST:event_btn_guardar_regActionPerformed

    private void btn_guardarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_guardarActionPerformed
    if (!txt_nome.getText().equals("") && !txt_mail.getText().equals("") ){
        numero.addElement(txt_id.getText());
        list_numero.setModel(numero);
        
        nome.addElement(txt_nome.getText());
        list_nome.setModel(nome);

        mail.addElement(txt_mail.getText());
        list_mail.setModel(mail);

        JOptionPane.showMessageDialog(this,
                "Dados adicionados às listas.");
        btn_novo.setEnabled(true);
        btn_guardar.setEnabled(false);
        btn_cancelar.setEnabled(false);
        txt_id.setText("");
        txt_nome.setText("");
        txt_mail.setText("");
        
        btn_imprimir.setEnabled(true);
        btn_eliminar.setEnabled(true);
        btn_guardar_reg.setEnabled(true);
    } 
    else{
        JOptionPane.showMessageDialog(this,
                "Todos os campos são de preenchimento obrigatório.",
                "Agenda",
                JOptionPane.ERROR_MESSAGE);
    }
        
    
    }//GEN-LAST:event_btn_guardarActionPerformed

    private void btn_cancelarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_cancelarActionPerformed
    txt_id.setText("");
    txt_nome.setText("");
    txt_mail.setText("");
    
    btn_guardar.setEnabled(false);
    btn_cancelar.setEnabled(false);
    btn_novo.setEnabled(true);
    txt_nome.setEnabled(false);
    txt_mail.setEnabled(false);
    contador--;
    }//GEN-LAST:event_btn_cancelarActionPerformed

    private void list_numeroMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_list_numeroMouseReleased
    list_nome.setSelectedIndex(list_numero.getSelectedIndex());
    list_mail.setSelectedIndex(list_numero.getSelectedIndex());
    }//GEN-LAST:event_list_numeroMouseReleased

    private void list_nomeMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_list_nomeMouseReleased
    list_numero.setSelectedIndex(list_nome.getSelectedIndex());
    list_mail.setSelectedIndex(list_nome.getSelectedIndex());       
    }//GEN-LAST:event_list_nomeMouseReleased

    private void list_mailMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_list_mailMouseReleased
    list_numero.setSelectedIndex(list_mail.getSelectedIndex());
    list_nome.setSelectedIndex(list_mail.getSelectedIndex());   
      
    }//GEN-LAST:event_list_mailMouseReleased

    private void list_numeroKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_list_numeroKeyReleased
       list_nome.setSelectedIndex(list_numero.getSelectedIndex());
    list_mail.setSelectedIndex(list_numero.getSelectedIndex());
    }//GEN-LAST:event_list_numeroKeyReleased

    private void list_nomeKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_list_nomeKeyReleased
       list_numero.setSelectedIndex(list_nome.getSelectedIndex());
    list_mail.setSelectedIndex(list_nome.getSelectedIndex());   
    }//GEN-LAST:event_list_nomeKeyReleased

    private void list_mailKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_list_mailKeyReleased
     list_numero.setSelectedIndex(list_mail.getSelectedIndex());
    list_nome.setSelectedIndex(list_mail.getSelectedIndex()); 
    }//GEN-LAST:event_list_mailKeyReleased

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
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(frm_contactos.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(frm_contactos.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(frm_contactos.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(frm_contactos.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new frm_contactos().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton bnt_sair;
    private javax.swing.JButton btn_cancelar;
    private javax.swing.JButton btn_eliminar;
    private javax.swing.JButton btn_guardar;
    private javax.swing.JButton btn_guardar_reg;
    private javax.swing.JButton btn_imprimir;
    private javax.swing.JButton btn_novo;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JList<String> list_mail;
    private javax.swing.JList<String> list_nome;
    private javax.swing.JList<String> list_numero;
    private javax.swing.JTextField txt_id;
    private javax.swing.JTextField txt_mail;
    private javax.swing.JTextField txt_nome;
    // End of variables declaration//GEN-END:variables
}
