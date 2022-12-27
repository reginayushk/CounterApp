//
//  ViewController.swift
//  CounterApp
//
//  Created by Regina on 27.12.2022.
//

import UIKit

class ViewController: UIViewController {

    // UI
    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var buttonToPress: UIButton!
    
    // Private properties
    private var counter: Int = 0
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Настраиваем внешний вид лейбла
        counterLabel.text = "Значение счётчика: \(counter)"
        
        // Настраиваем внешний вид кнопки
        buttonToPress.setTitle("Press", for: .normal)
        buttonToPress.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        buttonToPress.backgroundColor = .yellow
        buttonToPress.layer.cornerRadius = 10
    }

    // MARK: - Actions
    
    @IBAction private func buttonPressed(_ sender: Any) {
        counter += 1
        counterLabel.text = "Значение счётчика: \(counter)"
    }
}

