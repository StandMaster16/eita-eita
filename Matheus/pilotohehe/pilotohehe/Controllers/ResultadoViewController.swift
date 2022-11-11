//
//  ResultadoViewController.swift
//  pilotohehe
//
//  Created by ICMMAC06-7A13 on 11/11/22.
//

import UIKit

class ResultadoViewController: UIViewController {
    
    var manager = managerQuiz()

    @IBOutlet weak var pontos: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pontos.text = String(manager.pontos)
        
    }
    
    
    

}
