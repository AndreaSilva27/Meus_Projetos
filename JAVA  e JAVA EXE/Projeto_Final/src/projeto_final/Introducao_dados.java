/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projeto_final;

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
 * @author pedro
 */
public class Introducao_dados extends javax.swing.JFrame {

    DefaultListModel lista1=new DefaultListModel();
    DefaultListModel lista2=new DefaultListModel();
    DefaultListModel lista3=new DefaultListModel();
    
    public Introducao_dados() {
        initComponents();
        
        txt_nome.setEnabled(false);
        txt_mail.setEnabled(false);
        btn_guardar.setEnabled(false);
        btn_cancelar.setEnabled(false);
        btn_eliminar.setEnabled(false);
        btn_imprimir.setEnabled(false);
        btn_guarda_registo.setEnabled(false);
    }

    class Imprimir implements Printable{
        public int print(Graphics g, PageFormat f, int pageIndex){
            if (pageIndex==0){
                /* trabalhar a impressão*/
                Font f1=new Font("Calibri",Font.BOLD,12);
                Font f2=new Font("Calibri",Font.PLAIN,10);
                Font f3=new Font("Calibri",Font.PLAIN,6);
                
                g.setFont(f1);
                g.setColor(Color.blue);
                g.drawString("Lista de contatos", 25,25 );
                g.drawString("---------------------------------", 25,30);
                g.setFont(f3);
                g.setColor(Color.black);               
                
                g.drawString("Numero", 25, 90);
                g.drawString("Nome", 65, 90);
                g.drawString("Mail", 80, 90);
                
                g.drawLine(25, 95, 200, 95);
                
                int y=105;
                for(int i=0;i<lista1.getSize();i++){
                    g.drawString(lista1.getElementAt(i).toString(), 25, y);
                    g.drawString(lista2.getElementAt(i).toString(), 65, y);
                    g.drawString(lista3.getElementAt(i).toString(), 80, y);
                    
                    y+=10;
                }
                
                g.drawLine(25, y, 200, y);
        
                g.drawLine(25, y+40, 200, y+40);
                g.drawString("Obrigado.", 25, y+50);
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
        jPanel2 = new javax.swing.JPanel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        lista_numero = new javax.swing.JList<>();
        jScrollPane2 = new javax.swing.JScrollPane();
        lista_mail = new javax.swing.JList<>();
        jScrollPane3 = new javax.swing.JScrollPane();
        lista_nome = new javax.swing.JList<>();
        jPanel3 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        txt_numero = new javax.swing.JTextField();
        txt_nome = new javax.swing.JTextField();
        txt_mail = new javax.swing.JTextField();
        btn_guardar = new javax.swing.JButton();
        btn_cancelar = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        btn_novo = new javax.swing.JButton();
        btn_eliminar = new javax.swing.JButton();
        btn_imprimir = new javax.swing.JButton();
        btn_guarda_registo = new javax.swing.JButton();
        btn_sair = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel2.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 255, 255)));

        jLabel5.setText("Numero");

        jLabel6.setText("Nome");

        jLabel7.setText("Mail");

        lista_numero.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                lista_numeroMouseReleased(evt);
            }
        });
        jScrollPane1.setViewportView(lista_numero);

        lista_mail.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                lista_mailMouseReleased(evt);
            }
        });
        jScrollPane2.setViewportView(lista_mail);

        lista_nome.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                lista_nomeMouseReleased(evt);
            }
        });
        jScrollPane3.setViewportView(lista_nome);

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 64, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(8, 8, 8)
                        .addComponent(jLabel5)))
                .addGap(3, 3, 3)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane3, javax.swing.GroupLayout.DEFAULT_SIZE, 214, Short.MAX_VALUE)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(8, 8, 8)
                        .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addGap(4, 4, 4)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 178, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(136, 136, 136)))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(jLabel6)
                    .addComponent(jLabel7))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1)
                    .addComponent(jScrollPane2)
                    .addComponent(jScrollPane3, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 376, Short.MAX_VALUE))
                .addContainerGap())
        );

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(24, Short.MAX_VALUE)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        jPanel3.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 255, 255)));

        jLabel2.setText("Numero");

        jLabel3.setText("Mail");

        jLabel4.setText("Nome");

        txt_numero.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txt_numeroKeyPressed(evt);
            }
        });

        txt_nome.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txt_nomeKeyPressed(evt);
            }
        });

        txt_mail.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txt_mailKeyPressed(evt);
            }
        });

        btn_guardar.setFont(new java.awt.Font("Dialog", 1, 11)); // NOI18N
        btn_guardar.setText("Guardar");
        btn_guardar.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btn_guardar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_guardarActionPerformed(evt);
            }
        });

        btn_cancelar.setFont(new java.awt.Font("Dialog", 1, 11)); // NOI18N
        btn_cancelar.setText("Cancelar");
        btn_cancelar.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btn_cancelar.setMaximumSize(new java.awt.Dimension(50, 19));
        btn_cancelar.setMinimumSize(new java.awt.Dimension(50, 19));
        btn_cancelar.setPreferredSize(new java.awt.Dimension(50, 19));
        btn_cancelar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_cancelarActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txt_nome))
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addComponent(jLabel2)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txt_numero, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txt_mail)
                            .addGroup(jPanel3Layout.createSequentialGroup()
                                .addComponent(btn_guardar, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 50, Short.MAX_VALUE)
                                .addComponent(btn_cancelar, javax.swing.GroupLayout.PREFERRED_SIZE, 69, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(34, 34, 34)))))
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addGap(32, 32, 32)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(txt_numero, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(30, 30, 30)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(txt_nome, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(30, 30, 30)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(txt_mail, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btn_guardar, javax.swing.GroupLayout.DEFAULT_SIZE, 41, Short.MAX_VALUE)
                    .addComponent(btn_cancelar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );

        jLabel1.setFont(new java.awt.Font("Dialog", 1, 14)); // NOI18N
        jLabel1.setText("Agenda");

        btn_novo.setBackground(new java.awt.Color(51, 255, 0));
        btn_novo.setFont(new java.awt.Font("Dialog", 1, 11)); // NOI18N
        btn_novo.setText("Novo");
        btn_novo.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btn_novo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_novoActionPerformed(evt);
            }
        });

        btn_eliminar.setFont(new java.awt.Font("Dialog", 1, 11)); // NOI18N
        btn_eliminar.setText("Eliminar");
        btn_eliminar.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btn_eliminar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_eliminarActionPerformed(evt);
            }
        });

        btn_imprimir.setFont(new java.awt.Font("Dialog", 1, 11)); // NOI18N
        btn_imprimir.setText("Imprimir");
        btn_imprimir.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btn_imprimir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_imprimirActionPerformed(evt);
            }
        });

        btn_guarda_registo.setFont(new java.awt.Font("Dialog", 1, 11)); // NOI18N
        btn_guarda_registo.setText("Guarda registo selecionado");
        btn_guarda_registo.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btn_guarda_registo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_guarda_registoActionPerformed(evt);
            }
        });

        btn_sair.setBackground(new java.awt.Color(255, 0, 51));
        btn_sair.setFont(new java.awt.Font("Dialog", 1, 11)); // NOI18N
        btn_sair.setText("Sair");
        btn_sair.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btn_sair.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_sairActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(btn_novo, javax.swing.GroupLayout.PREFERRED_SIZE, 73, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(50, 50, 50)
                        .addComponent(btn_eliminar, javax.swing.GroupLayout.PREFERRED_SIZE, 67, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(btn_imprimir, javax.swing.GroupLayout.PREFERRED_SIZE, 63, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(25, 25, 25))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addContainerGap()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 63, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(68, 68, 68)
                                .addComponent(btn_guarda_registo, javax.swing.GroupLayout.PREFERRED_SIZE, 202, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(131, 131, 131)
                                .addComponent(btn_sair, javax.swing.GroupLayout.PREFERRED_SIZE, 73, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 16, Short.MAX_VALUE)))
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel1)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(btn_novo, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btn_eliminar, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btn_imprimir, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(29, 29, 29)
                        .addComponent(btn_guarda_registo, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(28, 28, 28)
                        .addComponent(btn_sair, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(26, Short.MAX_VALUE))
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btn_guarda_registoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_guarda_registoActionPerformed
       ligacaoMySql bd=new ligacaoMySql();
       bd.criarLigacaoMySql();
    
    try{
        Connection cn=bd.criarLigacaoMySql();
        Statement st =cn.createStatement();
        
        int max = lista1.getSize();
        for (int posicao = 0;posicao < max;posicao++){
            st.executeUpdate("insert into tab_contatos (nome,mail) values('"+lista2.getElementAt(posicao)+
                "','"+lista3.getElementAt(posicao)+"')");
            JOptionPane.showMessageDialog(this, 
                "Pedido guardado",
                "POS",
                JOptionPane.INFORMATION_MESSAGE);
        }
        JOptionPane.showMessageDialog(this, 
                "Contatos guardados",
                "Contatos",
                JOptionPane.INFORMATION_MESSAGE);
        
        lista1.clear();
        lista2.clear();
        lista3.clear();       
       
    }
    catch(SQLException e){
               JOptionPane.showMessageDialog(this, 
                "Erro ao guardar o contato "+e.getMessage(),
                "POS",
                JOptionPane.ERROR_MESSAGE);
    }
                                          
    }//GEN-LAST:event_btn_guarda_registoActionPerformed

    private void btn_sairActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_sairActionPerformed
        System.exit(0);
    }//GEN-LAST:event_btn_sairActionPerformed

    private void btn_novoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_novoActionPerformed
        txt_nome.setEnabled(true);
        txt_mail.setEnabled(true);
        btn_guardar.setEnabled(true);
        btn_cancelar.setEnabled(true);
        
        String numero = txt_numero.getText();
                if(numero == null || numero.isEmpty()){
                    txt_numero.setText("1");
                } else {
                    txt_numero.setText(numero);
                } 
    }//GEN-LAST:event_btn_novoActionPerformed

    private void txt_nomeKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txt_nomeKeyPressed
        if((evt.getKeyChar() >= 'a' && evt.getKeyChar()<='z') ||
            (evt.getKeyChar() >= 'A' && evt.getKeyChar()<='Z')    
            && txt_nome.getText().length()<50 || evt.getKeyChar() == ' '||
            evt.getKeyCode()==8 || evt.getKeyCode()==127)
        {
        txt_nome.setEditable(true);
        }
        else{
        txt_nome.setEditable(false);
        }
    }//GEN-LAST:event_txt_nomeKeyPressed

    private void txt_mailKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txt_mailKeyPressed
       if( (evt.getKeyCode() >= 33 && evt.getKeyCode()<=126)
            && txt_mail.getText().length()<80 || 
            evt.getKeyCode()==8 || evt.getKeyCode()==127)
        {
        txt_mail.setEditable(true);
        }
        else{
        txt_mail.setEditable(false);
        }
    }//GEN-LAST:event_txt_mailKeyPressed

    private void btn_guardarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_guardarActionPerformed
        int numero = Integer.parseInt(txt_numero.getText());
           
        if (txt_nome.getText().equals("") || txt_mail.getText().equals("")){
            JOptionPane.showMessageDialog(this, "Tem de preencher os espaços de Nome e Mail."
                    , "Erro", JOptionPane.ERROR_MESSAGE);
        }
        else{
        lista1.addElement(txt_numero.getText());
        lista_numero.setModel(lista1);
        lista2.addElement(txt_nome.getText());
        lista_nome.setModel(lista2);
        lista3.addElement(txt_mail.getText());
        lista_mail.setModel(lista3);        
        numero++;
        txt_numero.setText(String.valueOf(numero));
        txt_nome.setText("");
        txt_mail.setText("");
        txt_nome.setEnabled(false);
        txt_mail.setEnabled(false);
        btn_guardar.setEnabled(false);
        btn_cancelar.setEnabled(false);
        btn_eliminar.setEnabled(true);
        btn_imprimir.setEnabled(true);
        btn_guarda_registo.setEnabled(true);    
        }       
    }//GEN-LAST:event_btn_guardarActionPerformed

    private void lista_numeroMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lista_numeroMouseReleased
        lista_nome.setSelectedIndex(lista_numero.getSelectedIndex());
        lista_mail.setSelectedIndex(lista_numero.getSelectedIndex());   
    }//GEN-LAST:event_lista_numeroMouseReleased

    private void lista_nomeMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lista_nomeMouseReleased
        lista_numero.setSelectedIndex(lista_nome.getSelectedIndex());
        lista_mail.setSelectedIndex(lista_nome.getSelectedIndex());   
    }//GEN-LAST:event_lista_nomeMouseReleased

    private void lista_mailMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lista_mailMouseReleased
        lista_nome.setSelectedIndex(lista_mail.getSelectedIndex());
        lista_numero.setSelectedIndex(lista_mail.getSelectedIndex()); 
    }//GEN-LAST:event_lista_mailMouseReleased

    private void btn_cancelarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_cancelarActionPerformed
        txt_nome.setText("");
        txt_mail.setText("");
    }//GEN-LAST:event_btn_cancelarActionPerformed

    private void btn_eliminarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_eliminarActionPerformed
        if(lista_nome.getSelectedIndex()<0){
            JOptionPane.showMessageDialog(this, 
                "Não existe linha selecionada",
                "Erro",
                JOptionPane.ERROR_MESSAGE);
            return;
        }
        
        int resposta=JOptionPane.showConfirmDialog(this, 
            "Eliminar linha",
            "Confirma eliminar linha?",
            JOptionPane.YES_NO_OPTION,
            JOptionPane.QUESTION_MESSAGE);
        if (resposta==1) {
            return;
        }
        else{
            int posicao=lista_nome.getSelectedIndex(); 
            lista1.remove(posicao);
            lista2.remove(posicao);
            lista3.remove(posicao);
        }
        int posicao=lista_nome.getLastVisibleIndex();
        if (posicao < 0){
            btn_eliminar.setEnabled(false);
            btn_imprimir.setEnabled(false);
            btn_guarda_registo.setEnabled(false);
        }
    }//GEN-LAST:event_btn_eliminarActionPerformed

    private void btn_imprimirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_imprimirActionPerformed
        PrinterJob j=PrinterJob.getPrinterJob();
        j.setPrintable(new Imprimir());
        j.printDialog();
    
        try{j.print();}
        catch(PrinterException e){}        
    }//GEN-LAST:event_btn_imprimirActionPerformed

    private void txt_numeroKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txt_numeroKeyPressed
       txt_numero.setEditable(false);
        
    }//GEN-LAST:event_txt_numeroKeyPressed

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
            java.util.logging.Logger.getLogger(Introducao_dados.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Introducao_dados.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Introducao_dados.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Introducao_dados.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Introducao_dados().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_cancelar;
    private javax.swing.JButton btn_eliminar;
    private javax.swing.JButton btn_guarda_registo;
    private javax.swing.JButton btn_guardar;
    private javax.swing.JButton btn_imprimir;
    private javax.swing.JButton btn_novo;
    private javax.swing.JButton btn_sair;
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
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JList<String> lista_mail;
    private javax.swing.JList<String> lista_nome;
    private javax.swing.JList<String> lista_numero;
    private javax.swing.JTextField txt_mail;
    private javax.swing.JTextField txt_nome;
    private javax.swing.JTextField txt_numero;
    // End of variables declaration//GEN-END:variables
}
