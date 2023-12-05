//
//  PerfomaceVC.swift
//  AniQuiz
//
//  Created by Leonardo Macedo on 05/12/23.
//

import UIKit

class PerfomaceVC: UIViewController {
    
    var points: Int?
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var percentageLabel: UILabel!
    
    @IBOutlet weak var homeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutConfig()
        performaceConfig()
    }
    
    func layoutConfig() {
        navigationItem.hidesBackButton = true
        homeButton.layer.cornerRadius = 12.0
    }
    
    func performaceConfig() {
        guard let points = points else { return }
        resultLabel.text = "You got \(points) out of \(questions.count) questions right"
        let percentage = (points * 100) / questions.count
        percentageLabel.text = "Final percentage: \(percentage)%"
    }
}
