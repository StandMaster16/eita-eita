//
//  MainViewController.swift
//  pilotohehe
//
//  Created by ICMMAC06-7A13 on 11/11/22.
//

import UIKit

class MainViewController: UIViewController {
    
    let MAIN = UIStoryboard(name: "Main", bundle: nil)
    var manager = managerQuiz()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btHistoria(_ sender: Any) {
        
        let VIEW_SERIES:SeriesViewController = MAIN.instantiateViewController(withIdentifier: "Series") as! SeriesViewController
        manager.posicao = -1
        VIEW_SERIES.manager = manager
        present(VIEW_SERIES, animated: true)
        performSegue(withIdentifier: "segueSeries", sender: nil)
        
        
    }
    

}
