//
//  ViewController.swift
//  Lista de Tarefas
//
//  Created by Luis Lima on 17/06/2019.
//  Copyright © 2019 Andr3ziim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var novaTarefa: UITextField!
    @IBAction func adicionarNovaTarefa(_ sender: Any) {
        
        if let textoDigitado = novaTarefa.text {
            let tarefa = TarefaUserDefauts()
            tarefa.salvar(tarefa: textoDigitado)
            novaTarefa.text = ""
        }
        
    }
    
    //Esconder Barra de Estatus
    override var prefersStatusBarHidden: Bool{
        return true
    }
    //Esconder Teclado ciclando Fora
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

