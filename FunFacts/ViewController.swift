//
//  ViewController.swift
//  FunFacts
//
//  Created by Alex Nuccio on 4/6/15.
//  Copyright (c) 2015 Nuccio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel2: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel2.text = factBook.factsArray[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        let randColor = colorWheel.randomColor()
        view.backgroundColor = randColor
        funFactButton.tintColor = randColor
        funFactLabel2.text = factBook.randomFact()
    }


}

