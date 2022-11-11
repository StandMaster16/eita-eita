//
//  QuizViewController.swift
//  pilotohehe
//
//  Created by ICMMAC06-7A13 on 11/11/22.
//

import UIKit

class QuizViewController: UIViewController {
    
    var manager = managerQuiz()
    var quiz:Quiz!
    var correct = 0
    
    @IBOutlet weak var lbContexto: UILabel!
    @IBOutlet weak var lbQuestao: UILabel!
    @IBOutlet var btRespostas: [UIButton]!
    @IBOutlet weak var Cronometro: UILabel!
    
    var tempo = 0
    var time = Timer()
    
    //var pro popup de errouuu
    var popup = Timer()
    var popuptime = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(action), userInfo: nil, repeats: true)
        
        reloadQuestion()
        
    }
    
    //cronometro
    @objc func action(){
        tempo += 1
        Cronometro.text = String(tempo)
    }

    //botao das respostas
    @IBAction func btRespostas(_ sender: UIButton) {
        
        correct = btRespostas.firstIndex(of: sender) ?? 0
        manager.isCorrectAnswer(correct: correct)
        
        
        if manager.contRespostas(){
            performSegue(withIdentifier: "segueResultado", sender: nil)
        }else{
            reloadQuestion()
            aviso()
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let VIEW_RESULT = segue.destination as!
        ResultadoViewController
        VIEW_RESULT.manager = managerQuiz()
    }
    
    //codigo pra vir as questões
    func reloadQuestion(){
        //atualizacao dos valores
        quiz = manager.returnQuiz()
        lbQuestao.text = quiz.pergunta
        lbContexto.text = quiz.contexto
        for i in 0...3{
            btRespostas[i].setTitle(quiz.opcoes[i], for: .normal)
        }
        
        //invisibilidade
        lbQuestao.isHidden = true
        lbContexto.isHidden = false
        for i in 0...3{
            btRespostas[i].isHidden = true
        }
    }
    //codigo pra quando o cara tocar na tela
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        lbQuestao.isHidden = false
        lbContexto.isHidden = true
        for i in 0...3{
            btRespostas[i].isHidden = false
        }
    }
    
    //Codigo pra quando errar ou acertar
    @objc func popuptempo(){
        
        lbContexto.isHidden = false
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.popup.invalidate()
        }
    }
    
    func aviso(){
        popup = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(popuptempo), userInfo: nil, repeats: false)
        
        if manager.certoOUerrado{
            lbContexto.text = "ACERTOU"
        } else {
            lbContexto.text = "ERROU"
        }
        
    }
    
    
    
}
