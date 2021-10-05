
package javafinal;

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

/**
 *
 * @author Andrea Silva
 */
public class Agenda extends javax.swing.JFrame {
        String nome,mail,num;
         
        
    DefaultListModel lista1=new DefaultListModel();
    DefaultListModel lista2=new DefaultListModel();
    DefaultListModel lista3=new DefaultListModel();
    
    
    
    public Agenda() {
        initComponents();
        txtnome.setEnabled(false);
        txtmail.setEnabled(false);
        btnguardar.setEnabled(false);
        btncancelar.setEnabled(false);
        btneliminar.setEnabled(false);
        btnimprimir.setEnabled(false);
        btnregisto.setEnabled(false);
        
    }

    class Imprimir implements Printable{
        public int print(Graphics g, PageFormat f, int pageIndex){
            if (pageIndex==0){
                /* trabalhar a impressão*/
                Font f1=new Font("Tahoma",Font.BOLD,12);
                Font f2=new Font("Tahoma",Font.PLAIN,10);
                Font f3=new Font("Tahoma",Font.PLAIN,8);
                
                g.setFont(f1);
                g.setColor(Color.blue);
                g.drawString("Lista de Clientes", 25,25 );
                g.drawString("---------------------------------", 25,30);
                g.setFont(f3);
                g.setColor(Color.gray);
                g.drawLine(25, 50, 200, 80);
                g.drawString("Número", 25, 90);
                g.drawString("Nome", 65, 90);
                g.drawString("Email", 135, 90);
                g.drawLine(25, 95, 200, 95);
               
                int y=105;
                for(int i=0;i<lista1.getSize();i++){
                    g.drawString(lista1.getElementAt(i).toString(), 25, y);
                    g.drawString(lista2.getElementAt(i).toString(), 65, y);
                    g.drawString(lista3.getElementAt(i).toString(), 135, y);
                    
                    y+=10;
                }
                
                g.drawLine(25, y, 200, y);
                g.setColor(Color.blue);
                g.setFont(f2);
                g.drawString("Fim da listagem,obrigado.", 25, y+50);
                return PAGE_EXISTS;
            }
            else{
                return NO_SUCH_PAGE;
            }
                
        }
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        txtnum = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        txtnome = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        txtmail = new javax.swing.JTextField();
        btnguardar = new javax.swing.JButton();
        btncancelar = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        listanum = new javax.swing.JList<>();
        jScrollPane2 = new javax.swing.JScrollPane();
        listanome = new javax.swing.JList<>();
        jScrollPane3 = new javax.swing.JScrollPane();
        listamail = new javax.swing.JList<>();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        btnnovo = new javax.swing.JButton();
        btneliminar = new javax.swing.JButton();
        btnimprimir = new javax.swing.JButton();
        btnsair = new javax.swing.JButton();
        btnregisto = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Agenda");

        jPanel1.setBackground(new java.awt.Color(153, 204, 255));

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel1.setText("Agenda");
        jLabel1.setToolTipText("");

        jPanel2.setBackground(new java.awt.Color(204, 255, 255));

        jLabel2.setText("Número:");

        txtnum.setEditable(false);
        txtnum.setName(""); // NOI18N
        txtnum.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtnumKeyPressed(evt);
            }
        });

        jLabel3.setText("Nome:");

        txtnome.setName(""); // NOI18N
        txtnome.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtnomeKeyPressed(evt);
            }
        });

        jLabel4.setText("Email:");

        txtmail.setName(""); // NOI18N
        txtmail.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtmailKeyPressed(evt);
            }
        });

        btnguardar.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        btnguardar.setText("Guardar");
        btnguardar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnguardarActionPerformed(evt);
            }
        });

        btncancelar.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        btncancelar.setText("Cancelar");
        btncancelar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btncancelarActionPerformed(evt);
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
                        .addComponent(jLabel3)
                        .addGap(28, 28, 28)
                        .addComponent(txtnome))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel2)
                        .addGap(18, 18, 18)
                        .addComponent(txtnum, javax.swing.GroupLayout.PREFERRED_SIZE, 52, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel4)
                        .addGap(32, 32, 32)
                        .addComponent(txtmail)))
                .addContainerGap())
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(37, 37, 37)
                .addComponent(btnguardar)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 41, Short.MAX_VALUE)
                .addComponent(btncancelar)
                .addGap(47, 47, 47))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(29, 29, 29)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(txtnum, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(29, 29, 29)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtnome, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3))
                .addGap(29, 29, 29)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtmail, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4))
                .addGap(49, 49, 49)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnguardar)
                    .addComponent(btncancelar))
                .addContainerGap(53, Short.MAX_VALUE))
        );

        listanum.setBackground(new java.awt.Color(204, 255, 255));
        listanum.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                listanumMouseReleased(evt);
            }
        });
        jScrollPane1.setViewportView(listanum);

        listanome.setBackground(new java.awt.Color(204, 255, 255));
        listanome.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                listanomeMouseReleased(evt);
            }
        });
        jScrollPane2.setViewportView(listanome);

        listamail.setBackground(new java.awt.Color(204, 255, 255));
        listamail.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                listamailMouseReleased(evt);
            }
        });
        jScrollPane3.setViewportView(listamail);

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel5.setText("Número");

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel6.setText("Nome");
        jLabel6.setToolTipText("");

        jLabel7.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel7.setText("Mail");
        jLabel7.setToolTipText("");

        btnnovo.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        btnnovo.setText("Novo");
        btnnovo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnnovoActionPerformed(evt);
            }
        });

        btneliminar.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        btneliminar.setForeground(new java.awt.Color(204, 0, 51));
        btneliminar.setText("Eliminar");
        btneliminar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btneliminarActionPerformed(evt);
            }
        });

        btnimprimir.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        btnimprimir.setText("Imprimir");
        btnimprimir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnimprimirActionPerformed(evt);
            }
        });

        btnsair.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        btnsair.setText("Sair");
        btnsair.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnsairActionPerformed(evt);
            }
        });

        btnregisto.setBackground(new java.awt.Color(204, 255, 255));
        btnregisto.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        btnregisto.setText("Guarda Registo Selecionado");
        btnregisto.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnregistoActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 55, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(btnregisto, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(btnnovo, javax.swing.GroupLayout.PREFERRED_SIZE, 73, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(btneliminar, javax.swing.GroupLayout.PREFERRED_SIZE, 87, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(btnimprimir, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 52, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel5))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 230, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel6))))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel7)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addComponent(jScrollPane3, javax.swing.GroupLayout.DEFAULT_SIZE, 225, Short.MAX_VALUE)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(btnsair, javax.swing.GroupLayout.PREFERRED_SIZE, 73, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(23, 23, 23)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(jLabel5)
                    .addComponent(jLabel6)
                    .addComponent(jLabel7))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jScrollPane3)
                    .addComponent(jScrollPane2)
                    .addComponent(jScrollPane1)
                    .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(40, 40, 40)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnnovo)
                    .addComponent(btneliminar)
                    .addComponent(btnimprimir)
                    .addComponent(btnsair))
                .addGap(39, 39, 39)
                .addComponent(btnregisto)
                .addContainerGap(40, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGap(3, 3, 3))
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btncancelarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btncancelarActionPerformed
        txtnome.setText("");
        txtmail.setText("");
        
        
    }//GEN-LAST:event_btncancelarActionPerformed

    private void btnnovoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnnovoActionPerformed
        txtnome.setEnabled(true);
        txtmail.setEnabled(true);
        btnguardar.setEnabled(true);
        btncancelar.setEnabled(true);
         num = txtnum.getText();
                if(num == null || num.isEmpty()){
                    txtnum.setText("1");
                } else {
                    txtnum.setText(num);
                } 
              
    }//GEN-LAST:event_btnnovoActionPerformed

    private void btnguardarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnguardarActionPerformed
        int num = Integer.parseInt(txtnum.getText());
           
        if (txtnome.getText().equals("") || txtmail.getText().equals("")){
            JOptionPane.showMessageDialog(this, "Dados incorretos!\nDeve preencher os campos Nome e Email!"
                    , "Mensagem de Erro!", JOptionPane.ERROR_MESSAGE);
        }
        else{
            
        lista1.addElement(txtnum.getText());
        listanum.setModel(lista1);
        lista2.addElement(txtnome.getText());
        listanome.setModel(lista2);
        lista3.addElement(txtmail.getText());
        listamail.setModel(lista3);        
        num++;
        txtnum.setText(String.valueOf(num));
        txtnome.setText("");
        txtmail.setText("");
        txtnome.setEnabled(false);
        txtmail.setEnabled(false);
        btnguardar.setEnabled(false);
        btncancelar.setEnabled(false);
        btneliminar.setEnabled(true);
        btnimprimir.setEnabled(true);
        btnregisto.setEnabled(true);    
               
        }
    }//GEN-LAST:event_btnguardarActionPerformed

    private void listanumMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_listanumMouseReleased
        listanome.setSelectedIndex(listanum.getSelectedIndex());
        listamail.setSelectedIndex(listanum.getSelectedIndex());   
    }//GEN-LAST:event_listanumMouseReleased

    private void btneliminarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btneliminarActionPerformed
        int num = Integer.parseInt(txtnum.getText());
        if(listanome.getSelectedIndex()<0){
            JOptionPane.showMessageDialog(this, 
                "Não existem contatos selecionados!",
                "Erro",
                JOptionPane.ERROR_MESSAGE);
            return;
        }
        
        int resposta=JOptionPane.showConfirmDialog(this, 
            "Eliminar dados",
            "Confirma a eliminação dos dados?",
            JOptionPane.YES_NO_OPTION,
            JOptionPane.QUESTION_MESSAGE);
        if (resposta==1) {
            return;
        }
        else{
            int posicao=listanome.getSelectedIndex(); 
            lista1.remove(posicao);
            lista2.remove(posicao);
            lista3.remove(posicao);
        }
        int posicao=listanome.getLastVisibleIndex();
        if (posicao < 0){
            btneliminar.setEnabled(false);
            btnimprimir.setEnabled(false);
            btnregisto.setEnabled(false);
        }
        num--;
        txtnum.setText(String.valueOf(num));
    }//GEN-LAST:event_btneliminarActionPerformed

    private void listanomeMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_listanomeMouseReleased
        listanum.setSelectedIndex(listanome.getSelectedIndex());
        listamail.setSelectedIndex(listanome.getSelectedIndex());  
    }//GEN-LAST:event_listanomeMouseReleased

    private void listamailMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_listamailMouseReleased
        listanome.setSelectedIndex(listamail.getSelectedIndex());
        listanum.setSelectedIndex(listamail.getSelectedIndex());  
    }//GEN-LAST:event_listamailMouseReleased

    private void btnsairActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnsairActionPerformed
         System.exit(0);
    }//GEN-LAST:event_btnsairActionPerformed

    private void btnregistoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnregistoActionPerformed
        ligacaoMySql bd=new ligacaoMySql();
        bd.criarLigacaoMySql();
    
    try{
        Connection cn=bd.criarLigacaoMySql();
        Statement st =cn.createStatement();
        
        int max = lista1.getSize();
        for (int posicao = 0;posicao < max;posicao++){
            st.executeUpdate("insert into tab_contatos (nome,email) values('"+lista2.getElementAt(posicao)+
                "','"+lista3.getElementAt(posicao)+"')");
            JOptionPane.showMessageDialog(this, 
                "Dados guardados",
                "Listagem de Clientes",
                JOptionPane.INFORMATION_MESSAGE);
        }
        
        lista1.clear();
        lista2.clear();
        lista3.clear();       
       
    }
    catch(SQLException e){
               JOptionPane.showMessageDialog(this, 
                "Erro ao guardar os dados! "+e.getMessage(),
                "Listagem de Clientes",
                JOptionPane.ERROR_MESSAGE);
    }
                                          
    }//GEN-LAST:event_btnregistoActionPerformed

    private void txtnomeKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtnomeKeyPressed
        if((evt.getKeyChar() >= 'a' && evt.getKeyChar()<='z') ||
            (evt.getKeyChar() >= 'A' && evt.getKeyChar()<='Z')    
            && txtnome.getText().length()<50 || evt.getKeyChar() == ' '||
            evt.getKeyCode()==8 || evt.getKeyCode()==127)
        {
        txtnome.setEditable(true);
        }
        else{
        txtnome.setEditable(false);
        }
    }//GEN-LAST:event_txtnomeKeyPressed

    private void txtmailKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtmailKeyPressed
        if( (evt.getKeyCode() >= 33 && evt.getKeyCode()<=126)
            && txtmail.getText().length()<80 || 
            evt.getKeyCode()==8 || evt.getKeyCode()==127)
        {
        txtmail.setEditable(true);
        }
        else{
        txtmail.setEditable(false);
        }
    }//GEN-LAST:event_txtmailKeyPressed

    private void txtnumKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtnumKeyPressed
        txtnum.setEditable(false);
    }//GEN-LAST:event_txtnumKeyPressed

    private void btnimprimirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnimprimirActionPerformed
        PrinterJob j=PrinterJob.getPrinterJob();
        j.setPrintable(new Imprimir());
        j.printDialog();
    
        try{j.print();}
        catch(PrinterException e){}        
    }//GEN-LAST:event_btnimprimirActionPerformed

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
            java.util.logging.Logger.getLogger(Agenda.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Agenda.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Agenda.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Agenda.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Agenda().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btncancelar;
    private javax.swing.JButton btneliminar;
    private javax.swing.JButton btnguardar;
    private javax.swing.JButton btnimprimir;
    private javax.swing.JButton btnnovo;
    private javax.swing.JButton btnregisto;
    private javax.swing.JButton btnsair;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JList<String> listamail;
    private javax.swing.JList<String> listanome;
    private javax.swing.JList<String> listanum;
    private javax.swing.JTextField txtmail;
    private javax.swing.JTextField txtnome;
    private javax.swing.JTextField txtnum;
    // End of variables declaration//GEN-END:variables
}
