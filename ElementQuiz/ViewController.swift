//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Mark Meretzky on 11/5/18.
//  Copyright © 2018 New York University School of Professional Studies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let elementList: [String] = [
        "Carbon",
        "Gold",
        "Chlorine",
        "Sodium"
    ];
    
    var currentElementIndex: Int = 0;

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
        updateElement();
    }

    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = elementList[currentElementIndex];
    }
    
    @IBAction func goToNextElement(_ sender: UIButton) {
        currentElementIndex += 1;
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0;
        }
        updateElement();
    }
    
    func updateElement() {
        answerLabel.text = "?";
        let elementName: String = elementList[currentElementIndex];
        let image: UIImage = UIImage(named: elementName)!;
        imageView.image = image;
    }
}

