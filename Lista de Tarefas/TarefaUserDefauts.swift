//
//  TarefaUserDefauts.swift
//  Lista de Tarefas
//
//  Created by Luis Lima on 17/06/2019.
//  Copyright © 2019 Andr3ziim. All rights reserved.
//

import UIKit

class TarefaUserDefauts {
    
    let chave = "ListaTarefas"
    var tarefas: [String] = []
    
    func salvar(tarefa: String) {
        //Recuperar tarefas Salvas
        tarefas = listar()
        
        //Salvar tarefa
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: chave)
    }
    
    func remove(indice: Int) {
        //Recuperar tarefas Salvas
        tarefas = listar()
        tarefas.remove(at: indice)
        UserDefaults.standard.set(tarefas, forKey: chave)
    }
    
    func listar() -> Array<String> {
        
        let dados = UserDefaults.standard.object(forKey: chave)
        
        if dados != nil {
            return dados as! Array<String>
        }else{
            return []
        }
        
    }
}
