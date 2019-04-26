//
//  CrearNotaViewController.swift
//  Tarea6
//
//  Created by David Adolfo Garcia Giron on 13/04/19.
//  Copyright © 2019 Tecsup. All rights reserved.
//

import UIKit

class CrearNotaViewController: UIViewController {
    
    
    @IBOutlet weak var txtCurso: UITextField!
    
    @IBOutlet weak var txtLaboratorio: UITextField!
    
    @IBOutlet weak var txtPracticas: UITextField!
    
    @IBOutlet weak var txtFinal: UITextField!
    
    var anteriorVC = ViewController()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func agregar(_ sender: Any) {
       
        let nota = Notas()
        
        
        nota.cursos = txtCurso.text!
        nota.promedioLab = Double(txtLaboratorio.text!)!
        nota.promedioPrac = Double(txtPracticas.text!)!
        nota.examenFinal = Double(txtFinal.text!)!
        
        
        anteriorVC.notas.append(nota)
        anteriorVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
