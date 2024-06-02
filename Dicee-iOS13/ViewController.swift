//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /* 
     Interface Builder Outlet: mi consente di fare riferimento a un elemento dell'interfaccia utente
     IBOutlet per effettuare una modifica dal codice alla parte di Design
     */
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    let dadi: [UIImage?] = [
        UIImage(named: "DiceOne"),
        UIImage(named: "DiceTwo"),
        UIImage(named: "DiceThree"),
        UIImage(named: "DiceFour"),
        UIImage(named: "DiceFive"),
        UIImage(named: "DiceSix")
        ]
    

    // IB Action: effettuano una modifica agendo dal design al codice
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // Oggetto.property = valore
        //diceImageViewOne.image = UIImage(named: "DiceFour")
        //diceImageViewTwo.image = UIImage(named: "DiceTwo")
        
        /*
         In swift per generare numeri casuali bisogna invocare il metodo random(), un metodo statico per cui si chiama tramite il type.
         */
        var dado1Rand = Int.random(in: 0...5)
        var dado2Rand = Int.random(in: 0...5)
        
        
        
        // Ad ogni azione del button, generare una coppia di dadi randomici
        diceImageViewTwo.image = dadi[dado2Rand]
     
        diceImageViewOne.image = dadi[dado1Rand]
    
    }
    
    // Questa funzione viene eseguita immediatamente quando la Vista viene caricata
    //override func viewDidLoad() {
    //    super.viewDidLoad()
    //}
}
