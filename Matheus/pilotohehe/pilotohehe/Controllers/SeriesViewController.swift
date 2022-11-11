//
//  SeriesViewController.swift
//  pilotohehe
//
//  Created by ICMMAC06-7A13 on 11/11/22.
//

import UIKit

class SeriesViewController: UIViewController {
    
    var manager = managerQuiz()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btNonoano(_ sender: Any) {
        
        performSegue(withIdentifier: "segueAssuntos", sender: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let VIEW_ASSUNTOS = segue.destination as! AssuntoViewController
        VIEW_ASSUNTOS.manager = manager
        
    }
    

}
