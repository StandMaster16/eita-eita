//
//  AssuntoViewController.swift
//  pilotohehe
//
//  Created by ICMMAC06-7A13 on 11/11/22.
//

import UIKit

class AssuntoViewController: UIViewController {

    @IBOutlet var btAssuntos: [UIButton]!

    var manager = managerQuiz()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func btAssunto(_ sender: UIButton) {
        performSegue(withIdentifier: "segueQuiz", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let VIEW_QUIZ = segue.destination as! QuizViewController
        VIEW_QUIZ.manager = manager
    }
    
    

}
