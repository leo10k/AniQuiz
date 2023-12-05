//
//  ViewController.swift
//  AniQuiz
//
//  Created by Leonardo Macedo on 04/12/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var startQuizButton: UIButton!
    
    @IBAction func startQuizButtonAction(_ sender: Any) {
        print("Button pressed!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configLayout()
    }
    
    func configLayout() {
        startQuizButton.layer.cornerRadius = 12.0
        navigationItem.hidesBackButton = true
    }

}

