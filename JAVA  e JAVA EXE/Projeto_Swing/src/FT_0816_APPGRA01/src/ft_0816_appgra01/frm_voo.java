package ft_0816_appgra01;


import java.awt.Color;
import javax.swing.JOptionPane;
import javax.swing.JTextField;



public class frm_voo extends javax.swing.JFrame {

    public frm_voo() {
        initComponents();
        setLocationRelativeTo(null);
        getContentPane().setBackground(Color.blue);
        
    }

    public void validar(JTextField x,int li,int ls)
    {
      if (x.getText().trim().isEmpty())
    {
        x.setText("0");
    }    
    else
    {
        if (Integer.parseInt(x.getText())<li ||
                Integer.parseInt(x.getText())>ls)
        {
            x.requestFocus();
            x.setBackground(Color.red);
        }
        else
          x.setBackground(Color.white);
    }    
    }        
       
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        txt_hp = new javax.swing.JTextField();
        txt_mp = new javax.swing.JTextField();
        txt_hd = new javax.swing.JTextField();
        txt_md = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        txt_situacao = new javax.swing.JTextField();
        txt_hc = new javax.swing.JTextField();
        btn_calcular = new javax.swing.JButton();
        btn_limpar = new javax.swing.JButton();
        txt_mc = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Companhia Só Ida, Lda.");
        setAlwaysOnTop(true);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel1.setText("Duração");
        jLabel1.setToolTipText("");

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel2.setText("Minutos");
        jLabel2.setToolTipText("");

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel3.setText("Hora");
        jLabel3.setToolTipText("");

        txt_hp.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        txt_hp.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txt_hp.setToolTipText("");
        txt_hp.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                txt_hpFocusLost(evt);
            }
        });
        txt_hp.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txt_hpKeyPressed(evt);
            }
        });

        txt_mp.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        txt_mp.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txt_mp.setToolTipText("");
        txt_mp.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                txt_mpFocusLost(evt);
            }
        });

        txt_hd.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        txt_hd.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txt_hd.setToolTipText("");
        txt_hd.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                txt_hdFocusLost(evt);
            }
        });

        txt_md.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        txt_md.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txt_md.setToolTipText("");
        txt_md.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                txt_mdFocusLost(evt);
            }
        });

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel4.setText("Hora");
        jLabel4.setToolTipText("");

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel5.setText("Minutos");
        jLabel5.setToolTipText("");

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel6.setText("Partida");
        jLabel6.setToolTipText("");

        jLabel7.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel7.setText("Chegada");
        jLabel7.setToolTipText("");

        jLabel8.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel8.setText("Hora");
        jLabel8.setToolTipText("");

        jLabel9.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel9.setText("Minutos");
        jLabel9.setToolTipText("");

        txt_situacao.setEditable(false);
        txt_situacao.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        txt_situacao.setToolTipText("");

        txt_hc.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        txt_hc.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txt_hc.setToolTipText("");
        txt_hc.setEnabled(false);

        btn_calcular.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        btn_calcular.setText("Calcular");
        btn_calcular.setToolTipText("");
        btn_calcular.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_calcularActionPerformed(evt);
            }
        });

        btn_limpar.setBackground(new java.awt.Color(255, 255, 255));
        btn_limpar.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        btn_limpar.setText("Limpar");
        btn_limpar.setToolTipText("");
        btn_limpar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_limparActionPerformed(evt);
            }
        });

        txt_mc.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        txt_mc.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txt_mc.setToolTipText("");
        txt_mc.setEnabled(false);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(17, 17, 17)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(txt_situacao)
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addComponent(jLabel6)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txt_hp, javax.swing.GroupLayout.PREFERRED_SIZE, 62, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel1)
                            .addComponent(txt_hd, javax.swing.GroupLayout.PREFERRED_SIZE, 62, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel4)
                            .addComponent(jLabel7)
                            .addComponent(jLabel8)
                            .addComponent(txt_hc, javax.swing.GroupLayout.PREFERRED_SIZE, 62, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(64, 64, 64)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel9)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 68, Short.MAX_VALUE)
                                .addComponent(btn_calcular))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel5)
                                    .addComponent(txt_md, javax.swing.GroupLayout.PREFERRED_SIZE, 62, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txt_mp, javax.swing.GroupLayout.PREFERRED_SIZE, 62, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel2))
                                .addGap(0, 0, Short.MAX_VALUE))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(txt_mc, javax.swing.GroupLayout.PREFERRED_SIZE, 62, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(btn_limpar, javax.swing.GroupLayout.PREFERRED_SIZE, 93, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                .addContainerGap())
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(layout.createSequentialGroup()
                    .addGap(20, 20, 20)
                    .addComponent(jLabel3)
                    .addContainerGap(339, Short.MAX_VALUE)))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(23, 23, 23)
                .addComponent(jLabel6)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel2)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txt_hp, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_mp, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(29, 29, 29)
                .addComponent(jLabel1)
                .addGap(30, 30, 30)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(jLabel5))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txt_hd, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_md, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(33, 33, 33)
                .addComponent(jLabel7)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel8)
                    .addComponent(jLabel9)
                    .addComponent(btn_calcular))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txt_hc, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btn_limpar)
                    .addComponent(txt_mc, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 33, Short.MAX_VALUE)
                .addComponent(txt_situacao, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(26, 26, 26))
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(layout.createSequentialGroup()
                    .addGap(54, 54, 54)
                    .addComponent(jLabel3)
                    .addContainerGap(435, Short.MAX_VALUE)))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_calcularActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_calcularActionPerformed
       int hp=0,mp=0,hd=0,md=0,hc,mc;
       // dados de entrada
       try{
       hp=Integer.parseInt(txt_hp.getText());
       mp=Integer.parseInt(txt_mp.getText());
       hd=Integer.parseInt(txt_hd.getText());
       md=Integer.parseInt(txt_md.getText());
       }
       catch(NumberFormatException e)
       {
          JOptionPane.showMessageDialog(this, 
                  "Campos em branco");
          return;
       }                 
       // calcular dados da chegada
       hc=hp+hd;
       mc=mp+md;
       if (mc>59){
           hc++;
           mc-=60;
       }
       
       if (hc>23)
       {    
           hc-=24;
           txt_situacao.setText("O voo chegou no dia seguinte");
       }           
      else
          txt_situacao.setText("O voo chegou no próprio dia"); 
       
       // apresentar os dados da chegada
       txt_hc.setText(Integer.toString(hc));
       txt_mc.setText(Integer.toString(mc));
       
    }//GEN-LAST:event_btn_calcularActionPerformed

    private void btn_limparActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_limparActionPerformed
        txt_hp.setText("");txt_mp.setText("");
        txt_hd.setText("");txt_md.setText("");
        txt_hc.setText("");txt_mc.setText("");
    }//GEN-LAST:event_btn_limparActionPerformed

    private void txt_hpFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_txt_hpFocusLost
  
    validar(txt_hp,0,23);
    
    }//GEN-LAST:event_txt_hpFocusLost

    private void txt_hpKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txt_hpKeyPressed
         if (evt.getKeyChar()>='0' && evt.getKeyChar()<='9' || 
             evt.getKeyCode()==8 || evt.getKeyCode()==127 )
             txt_hp.setEditable(true);
        else
             txt_hp.setEditable(false);
    }//GEN-LAST:event_txt_hpKeyPressed

    private void txt_mpFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_txt_mpFocusLost
    validar(txt_mp,0,59);
    }//GEN-LAST:event_txt_mpFocusLost

    private void txt_hdFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_txt_hdFocusLost
    validar(txt_hd,0,23);
    }//GEN-LAST:event_txt_hdFocusLost

    private void txt_mdFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_txt_mdFocusLost
    validar(txt_md,0,59); 
    }//GEN-LAST:event_txt_mdFocusLost

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
            java.util.logging.Logger.getLogger(frm_voo.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(frm_voo.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(frm_voo.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(frm_voo.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new frm_voo().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_calcular;
    private javax.swing.JButton btn_limpar;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JTextField txt_hc;
    private javax.swing.JTextField txt_hd;
    private javax.swing.JTextField txt_hp;
    private javax.swing.JTextField txt_mc;
    private javax.swing.JTextField txt_md;
    private javax.swing.JTextField txt_mp;
    private javax.swing.JTextField txt_situacao;
    // End of variables declaration//GEN-END:variables
}
