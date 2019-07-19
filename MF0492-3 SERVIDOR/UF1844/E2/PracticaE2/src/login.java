import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JTextField;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import javax.swing.JPasswordField;
import javax.swing.JButton;
import java.awt.SystemColor;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.Color;

public class login extends JFrame {

	private JPanel contentPane;
	public static JTextField textField;
	public static JPasswordField passwordField;


	/**
	 * Create the frame.
	 */
	public login() {
		setTitle("Login");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		textField = new JTextField();
		textField.setBounds(214, 89, 86, 20);
		contentPane.add(textField);
		textField.setColumns(10);
		
		JLabel lblNewLabel = new JLabel("Usuario:");
		lblNewLabel.setFont(new Font("Segoe UI", Font.BOLD, 12));
		lblNewLabel.setBounds(129, 90, 55, 17);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("Contrase\u00F1a:");
		lblNewLabel_1.setFont(new Font("Segoe UI", Font.BOLD, 12));
		lblNewLabel_1.setBounds(129, 130, 73, 14);
		contentPane.add(lblNewLabel_1);
		
		passwordField = new JPasswordField();
		passwordField.setBounds(214, 128, 86, 20);
		contentPane.add(passwordField);
		final DatosUsuario data = new DatosUsuario();
		final DatosEconomicos datoseconomicos = new DatosEconomicos();
		
		JButton btnEntrar = new JButton("Entrar");
		btnEntrar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				if (data.ProbarPass() == 1) {
					JOptionPane.showMessageDialog(null, "Bienvenido Coco Liso");
					datoseconomicos.setVisible(true);
					dispose();
				}
				else {
					JOptionPane.showMessageDialog(null, "Error, tu no eres Coco Liso");
				}
			}
		});
		
		btnEntrar.setBounds(77, 202, 89, 23);
		contentPane.add(btnEntrar);
		
		JButton btnSalir = new JButton("Salir");
		btnSalir.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				
				System.exit(0);
				
			}
			
		});
		btnSalir.setBounds(262, 202, 89, 23);
		contentPane.add(btnSalir);
		
		JPanel panel = new JPanel();
		panel.setBorder(new EmptyBorder(1, 1, 1, 1));
		panel.setBackground(SystemColor.activeCaption);
		panel.setBounds(77, 48, 274, 143);
		contentPane.add(panel);
		
		JLabel lblNewLabel_2 = new JLabel("Usuario: Coco, Contrase\u00F1a: Liso");
		lblNewLabel_2.setForeground(new Color(220, 20, 60));
		lblNewLabel_2.setFont(new Font("Segoe UI", Font.PLAIN, 10));
		lblNewLabel_2.setBounds(77, 236, 160, 14);
		contentPane.add(lblNewLabel_2);
	}
}
