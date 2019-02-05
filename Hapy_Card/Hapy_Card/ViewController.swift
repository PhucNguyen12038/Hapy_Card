//
//  ViewController.swift
//  Hapy_Card
//
//  Created by nhp on 1/31/19.
//  Copyright © 2019 nhp. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var firstCard: UIButton!
    
    @IBOutlet weak var secondCard: UIButton!
    
    @IBOutlet weak var thirdCard: UIButton!
    
    @IBOutlet weak var takeCardP1: UIButton!
    
    // Finish elements for Person 1
    
    @IBOutlet weak var fourthCard: UIButton!
    
    @IBOutlet weak var fifthCard: UIButton!
    
    @IBOutlet weak var sixthCard: UIButton!
    
    @IBOutlet weak var takeCardP2: UIButton!
    
    // Finish elements for Person 2
    
    @IBOutlet weak var controlGame: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        controlGame.setTitle("Play", for: .normal)
        self.takeCardP2.transform = self.takeCardP2.transform.rotated(by: CGFloat(Double.pi))

    }

    @IBAction func pressPlay(_ sender: UIButton) {
        
        let card = Card()
        let shuffle = card.shuffle()
        // shuffle the card deck
        
        let firstCardFace = shuffle[0]
        firstCard.setImage(nil, for: .normal)
        // when reset game, clear foreground image
        firstCard.setBackgroundImage(UIImage(named: firstCardFace), for: .disabled)
        firstCard.setImage(UIImage(named: "back"), for: .normal)
        
        let secondCardFace = shuffle[1]
        fourthCard.setImage(nil, for: .normal)
        // when reset game, clear foreground image
        fourthCard.setBackgroundImage(UIImage(named: secondCardFace), for: .disabled)
        fourthCard.setImage(UIImage(named: "back"), for: .normal)
        
        let thirdCardFace = shuffle[2]
        secondCard.setImage(nil, for: .normal)
        // when reset game, clear foreground image
        secondCard.setBackgroundImage(UIImage(named: thirdCardFace), for: .disabled)
        secondCard.setImage(UIImage(named: "back"), for: .normal)
        
        let fourthCardFace = shuffle[3]
        fifthCard.setImage(nil, for: .normal)
        // when reset game, clear foreground image
        fifthCard.setBackgroundImage(UIImage(named: fourthCardFace), for: .disabled)
        fifthCard.setImage(UIImage(named: "back"), for: .normal)
        // give 1 card to host then 1 card to guess
        
        let fifthCardFace = shuffle[4]
        let sixthCardFace = shuffle[5]
        // take 2 next card
        sixthCard.setImage(nil, for: .normal)
        // when reset game, clear foreground image
        sixthCard.setBackgroundImage(nil, for: .normal)
        // disappear the sixth card when press control game button
        
        sixthCard.setImage(UIImage(named: fifthCardFace), for: .disabled)
        sixthCard.setBackgroundImage(UIImage(named: sixthCardFace), for: .disabled)
        // store 2 next card into foreground and background sixth card
        
        thirdCard.setImage(nil, for: .normal)
        // when reset game, clear foreground image
        thirdCard.setBackgroundImage(nil, for: .normal)
        // disappear the third card when press control game button
        thirdCard.setImage(UIImage(named: fifthCardFace), for: .disabled)
        thirdCard.setBackgroundImage(UIImage(named: sixthCardFace), for: .disabled)
        // store 2 next card to foreground and background image of third card
        controlGame.setTitle("Hapy", for: .normal)
    }
    
    
    @IBAction func pressFirstCard(_ sender: UIButton) {
        if(controlGame.titleLabel?.text == "Hapy"){
            let firstCardImageFace = firstCard.backgroundImage(for: .disabled)
            if(firstCard.currentImage == UIImage(named: "back")){
                firstCard.setImage(firstCardImageFace, for: .normal)
                firstCard.setBackgroundImage(UIImage(named: "blank_Card"), for: .normal)
            }
            else{
                firstCard.setImage(UIImage(named: "back"), for: .normal)
            }
        }
        
    }
    
    @IBAction func pressSecondCard(_ sender: UIButton) {
        if(controlGame.titleLabel?.text == "Hapy"){
            let secondCardImageFace = secondCard.backgroundImage(for: .disabled)
            if(secondCard.currentImage == UIImage(named: "back")){
                secondCard.setImage(secondCardImageFace, for: .normal)
                secondCard.setBackgroundImage(UIImage(named: "blank_Card"), for: .normal)
            }
            else{
                secondCard.setImage(UIImage(named: "back"), for: .normal)
            }
        }
       
    }
    
    @IBAction func pressThirdCard(_ sender: UIButton) {
        if(firstCard.currentImage != nil){
            let thirdCardImageFace = thirdCard.backgroundImage(for: .disabled)
            if(thirdCard.currentImage == UIImage(named: "back")){
                thirdCard.setImage(thirdCardImageFace, for: .normal)
                thirdCard.setBackgroundImage(UIImage(named: "blank_Card"), for: .normal)
            }
            else{
                thirdCard.setImage(UIImage(named: "back"), for: .normal)
            }
        }
        
    }
    
    @IBAction func pressFourthCard(_ sender: UIButton) {
        if(controlGame.titleLabel?.text == "Hapy"){
            let fourthCardImageFace = fourthCard.backgroundImage(for: .disabled)
            if(fourthCard.currentImage == UIImage(named: "back")){
                fourthCard.setImage(fourthCardImageFace, for: .normal)
                fourthCard.setBackgroundImage(UIImage(named: "blank_Card"), for: .normal)
            }
            else{
                fourthCard.setImage(UIImage(named: "back"), for: .normal)
            }
        }
        
    }
    
    @IBAction func pressFifthCard(_ sender: UIButton) {
        if(controlGame.titleLabel?.text == "Hapy"){
            let fifthCardImageFace = fifthCard.backgroundImage(for: .disabled)
            if(fifthCard.currentImage == UIImage(named: "back")){
                fifthCard.setImage(fifthCardImageFace, for: .normal)
                fifthCard.setBackgroundImage(UIImage(named: "blank_Card"), for: .normal)
            }
            else{
                fifthCard.setImage(UIImage(named: "back"), for: .normal)
            }
        }
        
    }
    
    @IBAction func pressSixthCard(_ sender: UIButton) {
        if(fourthCard.currentImage != nil){
            let sixthCardImageFace = sixthCard.backgroundImage(for: .disabled)
            if(sixthCard.currentImage == UIImage(named: "back")){
                sixthCard.setImage(sixthCardImageFace, for: .normal)
                sixthCard.setBackgroundImage(UIImage(named: "blank_Card"), for: .normal)
            }
            else{
                sixthCard.setImage(UIImage(named: "back"), for: .normal)
            }
        }
        
    }
    
    @IBAction func pressTakeCardP2(_ sender: UIButton) {
        if(controlGame.titleLabel?.text == "Hapy"){
            // if third card is picked
            // then sixth card get back ground image to show
            if(thirdCard.currentImage != nil){
                let sixthCardImageFace = sixthCard.backgroundImage(for: .disabled)
                sixthCard.setBackgroundImage(sixthCardImageFace, for: .disabled)
                sixthCard.setImage(UIImage(named: "back"), for: .normal)
            }
            // if third card is not picked
            // then sixth card get fore ground image to show
            else{
                let sixthCardImageFace = sixthCard.image(for: .disabled)
                sixthCard.setBackgroundImage(sixthCardImageFace, for: .disabled)
                sixthCard.setImage(UIImage(named: "back"), for: .normal)
            }
        }
    }
    
    @IBAction func pressTakeCardP1(_ sender: UIButton) {
        if(controlGame.titleLabel?.text == "Hapy"){
            // if card six is picked
            // then third card get the back ground image to show
            if(sixthCard.currentImage != nil){
                let thirdCardImageFace = thirdCard.backgroundImage(for: .disabled)
                thirdCard.setBackgroundImage(thirdCardImageFace, for: .disabled)
                thirdCard.setImage(UIImage(named: "back"), for: .normal)
            }
            // if card six is not picked
            // then third card get the image to show
            else{
                let thirdCardImageFace = thirdCard.image(for: .disabled)
                thirdCard.setBackgroundImage(thirdCardImageFace, for: .disabled)
                thirdCard.setImage(UIImage(named: "back"), for: .normal)
            }
        }
    }
}

