//
//  managerQuiz.swift
//  pilotohehe
//
//  Created by ICMMAC06-7A13 on 11/11/22.
//

import Foundation

class managerQuiz{
    
    var quizes:[Quiz] = [
        Quiz(pergunta: "Qual era os países do Eixo?", contexto: "Após a Primeira Guerra Mundial, países de cunho autoritário que se consideravam injustiçados pelo Tratado de Versalhes decidiram se unir contra os Aliados", opcoes: ["Japão, Itália e Alemanha", "Alemanha, Rússia e EUA", "Rússia, França e Inglaterra", "Itália, Brasil e China"], respostaCorreta: 0),
        Quiz(pergunta: "Porque Chaves é bom", contexto: "Chaves é um desenho", opcoes: ["pq sim", "pq nao", "sla", ".-."], respostaCorreta: 0),
        Quiz(pergunta: "Porque Joker é bom", contexto: "Joker ksksks", opcoes: ["pq nao", "pq é joaquim phoenix", "sla", ".-."], respostaCorreta: 1),
        Quiz(pergunta: "Porque Gigante de aço é bom", contexto: "eita eita kk", opcoes: ["nao é bom", "pq sim", "sla", ".-."], respostaCorreta: 0),
        Quiz(pergunta: "Porque StarWars é ruim", contexto: "luta de sabre de luz", opcoes: ["pq sim", "pq nao", "sla", ".-."], respostaCorreta: 0)
    //5
    ]
    
    var posicao = -1
    var pontos = 10
    var certoOUerrado = true
    var repostasRespondidas = 0
    
    func returnQuiz() -> Quiz{
        posicao += 1
        return quizes[posicao]
    }
    
    func isCorrectAnswer(correct: Int){
        if correct == quizes[posicao].respostaCorreta{
            pontos += 10
            print(pontos)
            certoOUerrado = true
        } else {
            pontos -= 1
            certoOUerrado = false
        }
    }
    
    func contRespostas() -> Bool {
        repostasRespondidas += 1
        if repostasRespondidas == 5 {
            return true
        } else {
            return false
        }
    }
    
}
