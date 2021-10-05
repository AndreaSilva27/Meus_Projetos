/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pedra_tesoura_papel;

import java.util.Random;

/**
 *
 * @author luism
 */
public class Pedra_Tesoura_Papel extends javax.swing.JFrame {

    int ResultadoJog = 0;
    int ResultadoComp = 0;
    /**
     * Creates new form Pedra_Tesoura_Papel
     */
    public Pedra_Tesoura_Papel() {
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

        buttonGroup1 = new javax.swing.ButtonGroup();
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        But_Jogar = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        txt_res_jog = new javax.swing.JTextField();
        txt_res_comp = new javax.swing.JTextField();
        jPanel3 = new javax.swing.JPanel();
        Rad_Pedra = new javax.swing.JRadioButton();
        Rad_Papel = new javax.swing.JRadioButton();
        Rad_Tesoura = new javax.swing.JRadioButton();
        jLabel4 = new javax.swing.JLabel();
        txt_jogador = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        txt_computador = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        txt_resultado = new javax.swing.JTextField();
        lbl_img1 = new javax.swing.JLabel();
        lbl_img3 = new javax.swing.JLabel();
        lbl_img2 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setLocation(new java.awt.Point(700, 300));

        jPanel1.setBackground(new java.awt.Color(26, 25, 25));

        But_Jogar.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        But_Jogar.setForeground(new java.awt.Color(0, 153, 255));
        But_Jogar.setText("Jogar");
        But_Jogar.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        But_Jogar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                But_JogarActionPerformed(evt);
            }
        });

        jLabel2.setText("Jogador");

        jLabel3.setText("Computador");

        txt_res_jog.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txt_res_jog.setText("0");
        txt_res_jog.setFocusable(false);

        txt_res_comp.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txt_res_comp.setText("0");
        txt_res_comp.setFocusable(false);

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(26, 26, 26)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(txt_res_jog, javax.swing.GroupLayout.PREFERRED_SIZE, 1, Short.MAX_VALUE)
                    .addComponent(jLabel2))
                .addGap(26, 26, 26)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel3)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(6, 6, 6)
                        .addComponent(txt_res_comp, javax.swing.GroupLayout.PREFERRED_SIZE, 47, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 87, Short.MAX_VALUE)
                .addComponent(But_Jogar, javax.swing.GroupLayout.PREFERRED_SIZE, 168, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(25, 25, 25))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(8, 8, 8)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(jLabel3))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txt_res_jog, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_res_comp, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap(19, Short.MAX_VALUE)
                .addComponent(But_Jogar, javax.swing.GroupLayout.PREFERRED_SIZE, 51, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(19, 19, 19))
        );

        buttonGroup1.add(Rad_Pedra);
        Rad_Pedra.setSelected(true);
        Rad_Pedra.setText("Pedra");

        buttonGroup1.add(Rad_Papel);
        Rad_Papel.setText("Papel");

        buttonGroup1.add(Rad_Tesoura);
        Rad_Tesoura.setText("Tesoura");

        jLabel4.setText("A escolha do Jogador foi:");

        txt_jogador.setText("- ");
        txt_jogador.setFocusable(false);

        jLabel5.setText("A Escolha do Computador foi:");

        txt_computador.setText("-");
        txt_computador.setFocusable(false);

        jLabel6.setText("Resultado:");

        txt_resultado.setText("-");
        txt_resultado.setFocusable(false);

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(Rad_Pedra)
                    .addComponent(Rad_Papel)
                    .addComponent(Rad_Tesoura))
                .addGap(24, 24, 24)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txt_jogador)
                    .addComponent(txt_computador)
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel4)
                            .addComponent(jLabel5))
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addComponent(jLabel6)
                        .addGap(18, 18, 18)
                        .addComponent(txt_resultado)))
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addComponent(Rad_Pedra)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(Rad_Papel)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(Rad_Tesoura))
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jLabel4)
                        .addGap(4, 4, 4)
                        .addComponent(txt_jogador, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel5)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txt_computador, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel6)
                    .addComponent(txt_resultado, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(8, Short.MAX_VALUE))
        );

        lbl_img1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagens/Rock.png"))); // NOI18N

        lbl_img3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagens/Scissors.png"))); // NOI18N

        lbl_img2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagens/Paper.png"))); // NOI18N

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(12, 12, 12)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lbl_img3)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                        .addComponent(lbl_img1, javax.swing.GroupLayout.PREFERRED_SIZE, 47, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(lbl_img2, javax.swing.GroupLayout.Alignment.LEADING)))
                .addGap(22, 22, 22)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(38, 38, 38)
                .addComponent(lbl_img1, javax.swing.GroupLayout.PREFERRED_SIZE, 46, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(lbl_img2)
                .addGap(18, 18, 18)
                .addComponent(lbl_img3)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jLabel1.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 51, 51));
        jLabel1.setText("Jogo Pedra, Papel, Tesoura.");

        jButton1.setFont(new java.awt.Font("Segoe UI", 0, 10)); // NOI18N
        jButton1.setText("Reset");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel1)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 56, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(jButton1))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void But_JogarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_But_JogarActionPerformed
    
        
    Random aleatorio=new Random();
    
    int Computador = aleatorio.nextInt(3)+1;    
     
    if (Rad_Pedra.isSelected() && Computador == 1){
        txt_jogador.setText("- Pedra");
        txt_computador.setText("- Pedra");
        txt_resultado.setText("- Jogo empatado");
        }
    else if (Rad_Pedra.isSelected() && Computador == 2){
        txt_jogador.setText("- Pedra");
        txt_computador.setText("- Papel");
        txt_resultado.setText("- Computador ganhou");
        ResultadoComp++;
        txt_res_jog.setText(Integer.toString(ResultadoJog));
        txt_res_comp.setText(Integer.toString(ResultadoComp));                
    }
    else if (Rad_Pedra.isSelected() && Computador == 3){
        txt_jogador.setText("- Pedra");
        txt_computador.setText("- Tesoura");
        txt_resultado.setText("- Jogador ganhou");
        ResultadoJog++;
        txt_res_jog.setText(Integer.toString(ResultadoJog));
        txt_res_comp.setText(Integer.toString(ResultadoComp));                
    }
        
    if (Rad_Papel.isSelected() && Computador == 1){
        txt_jogador.setText("- Papel");
        txt_computador.setText("- Pedra");
        txt_resultado.setText("- Jogador ganhou");
        ResultadoJog++;
        txt_res_jog.setText(Integer.toString(ResultadoJog));
        txt_res_comp.setText(Integer.toString(ResultadoComp));                
    }
    else if (Rad_Papel.isSelected() && Computador == 2){
        txt_jogador.setText("- Papel");
        txt_computador.setText("- Papel");
        txt_resultado.setText("- Jogo empatado");
    }
    else if (Rad_Papel.isSelected() && Computador == 3){
        txt_jogador.setText("- Papel");
        txt_computador.setText("- Tesoura");
        txt_resultado.setText("- Computador ganhou");
        ResultadoComp++;
        txt_res_jog.setText(Integer.toString(ResultadoJog));
        txt_res_comp.setText(Integer.toString(ResultadoComp));
    }
        
    if (Rad_Tesoura.isSelected() && Computador == 1){
        txt_jogador.setText("- Tesoura");
        txt_computador.setText("- Pedra");
        txt_resultado.setText("- Computador ganhou");
        ResultadoComp++;
        txt_res_jog.setText(Integer.toString(ResultadoJog));
        txt_res_comp.setText(Integer.toString(ResultadoComp));                
    }
    else if (Rad_Tesoura.isSelected() && Computador == 2){
        txt_jogador.setText("- Tesoura");
        txt_computador.setText("- Papel");
        txt_resultado.setText("- Jogador ganhou");
        ResultadoJog++;                    
        txt_res_jog.setText(Integer.toString(ResultadoJog));
        txt_res_comp.setText(Integer.toString(ResultadoComp));
    }
    else if (Rad_Tesoura.isSelected() && Computador == 3){
        txt_jogador.setText("- Tesoura");
        txt_computador.setText("- Tesoura");
        txt_resultado.setText("- Jogo empatado");                    
    }   
           
    }//GEN-LAST:event_But_JogarActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        ResultadoJog = 0;
        ResultadoComp = 0;
        txt_jogador.setText("-");
        txt_computador.setText("-");
        txt_resultado.setText("-");                    
        txt_res_jog.setText(Integer.toString(ResultadoJog));
        txt_res_comp.setText(Integer.toString(ResultadoComp));
    }//GEN-LAST:event_jButton1ActionPerformed

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
            java.util.logging.Logger.getLogger(Pedra_Tesoura_Papel.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Pedra_Tesoura_Papel.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Pedra_Tesoura_Papel.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Pedra_Tesoura_Papel.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Pedra_Tesoura_Papel().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton But_Jogar;
    private javax.swing.JRadioButton Rad_Papel;
    private javax.swing.JRadioButton Rad_Pedra;
    private javax.swing.JRadioButton Rad_Tesoura;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JLabel lbl_img1;
    private javax.swing.JLabel lbl_img2;
    private javax.swing.JLabel lbl_img3;
    private javax.swing.JTextField txt_computador;
    private javax.swing.JTextField txt_jogador;
    private javax.swing.JTextField txt_res_comp;
    private javax.swing.JTextField txt_res_jog;
    private javax.swing.JTextField txt_resultado;
    // End of variables declaration//GEN-END:variables
}