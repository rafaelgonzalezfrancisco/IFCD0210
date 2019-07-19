import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import javax.swing.JTextField;
import javax.swing.JComboBox;
import javax.swing.ButtonGroup;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JRadioButton;
import javax.swing.JFormattedTextField;
import java.awt.SystemColor;
import javax.swing.JButton;
import java.awt.Color;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class DatosEconomicos extends JFrame {

	private JPanel contentPane;
	private JTextField textNombre;
	private JTextField textField;
	private ButtonGroup botones = new ButtonGroup();
	
	/**
	 * Create the frame.
	 */
	public DatosEconomicos() {
		setTitle("Datos Econ\u00F3micos");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("Nombre:");
		lblNewLabel.setFont(new Font("Segoe UI", Font.BOLD, 12));
		lblNewLabel.setBounds(79, 66, 57, 16);
		contentPane.add(lblNewLabel);
		
		textNombre = new JTextField();
		textNombre.setFont(new Font("Segoe UI", Font.PLAIN, 12));
		textNombre.setBounds(134, 65, 244, 20);
		contentPane.add(textNombre);
		textNombre.setColumns(10);
		
		JLabel lblEdad = new JLabel("Edad:");
		lblEdad.setFont(new Font("Segoe UI", Font.BOLD, 12));
		lblEdad.setBounds(79, 97, 57, 16);
		contentPane.add(lblEdad);
		
		JLabel lblSexo = new JLabel("Sexo:");
		lblSexo.setFont(new Font("Segoe UI", Font.BOLD, 12));
		lblSexo.setBounds(79, 125, 57, 16);
		contentPane.add(lblSexo);
		
		JLabel lblSalario = new JLabel("Salario:");
		lblSalario.setFont(new Font("Segoe UI", Font.BOLD, 12));
		lblSalario.setBounds(79, 153, 57, 16);
		contentPane.add(lblSalario);
		
		JComboBox comboBox = new JComboBox();
		comboBox.setFont(new Font("Segoe UI", Font.PLAIN, 12));
		comboBox.setModel(new DefaultComboBoxModel(new String[] {"15 a 20 a\u00F1os", "20 a 25 a\u00F1os", "25 a 30 a\u00F1os", "30 a 35 a\u00F1os", "35 a 50 a\u00F1os", "> 50 a\u00F1os"}));
		comboBox.setBounds(134, 96, 94, 20);
		contentPane.add(comboBox);
		
		JRadioButton rdbtnNewRadioButton = new JRadioButton("Masculino");
		rdbtnNewRadioButton.setFont(new Font("Segoe UI", Font.PLAIN, 12));
		rdbtnNewRadioButton.setBounds(135, 123, 94, 23);
		contentPane.add(rdbtnNewRadioButton);
		
		JRadioButton rdbtnFemenino = new JRadioButton("Femenino");
		rdbtnFemenino.setFont(new Font("Segoe UI", Font.PLAIN, 12));
		rdbtnFemenino.setBounds(231, 123, 94, 23);
		contentPane.add(rdbtnFemenino);
		
		botones.add(rdbtnNewRadioButton);
		botones.add(rdbtnFemenino);
		
		textField = new JTextField();
		textField.setBounds(134, 152, 86, 20);
		contentPane.add(textField);
		textField.setColumns(10);
		
		JPanel panel = new JPanel();
		panel.setBorder(new EmptyBorder(1, 1, 1, 1));
		panel.setBackground(SystemColor.activeCaption);
		panel.setBounds(39, 39, 374, 159);
		contentPane.add(panel);
		
		JButton btnIngresar = new JButton("Ingresar");
		btnIngresar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				
				String mensaje, sexo;
				if (rdbtnNewRadioButton.isSelected()) {
					sexo = "Hombre";
					
				}
				else {
					if(rdbtnFemenino.isSelected()) {
						sexo = "Mujer";
					}
					else {
						sexo = "Ángel sin sexo";
					}
				}
				
				mensaje = textNombre.getText() + "\n" + "Tiene una edad de: " + comboBox.getSelectedItem() + "\n" + "Cuyo sexo es: " + sexo + "\n" + "Con un salario de: " + textField.getText() + " €";
				JOptionPane.showMessageDialog(null, mensaje);
				
			}
		});
		btnIngresar.setBackground(new Color(143, 188, 143));
		btnIngresar.setBounds(39, 209, 89, 23);
		contentPane.add(btnIngresar);
		
		JButton btnSalir = new JButton("Salir");
		btnSalir.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				System.exit(0);
			}
		});
		btnSalir.setBackground(new Color(255, 127, 80));
		btnSalir.setBounds(324, 209, 89, 23);
		contentPane.add(btnSalir);
	}
}
