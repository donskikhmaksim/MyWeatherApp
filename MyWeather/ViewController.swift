//
//  ViewController.swift
//  MyWeather
//
//  Created by Максим Донских on 02.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var imageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "girl with umbrella")
        view.contentMode = .scaleToFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Разрешить приложению Weather использовать данные о местоположении вашего устройства"
        label.textColor = UIColor(red: 0.973, green: 0.961, blue: 0.961, alpha: 1)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont(name: "Rubik-SemiBold", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let view = UIStackView()
        view.spacing = 14
        view.axis = .vertical
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var labelOne: UILabel = {
        let label = UILabel()
        label.text = "Чтобы получить более точные прогнозы погоды во время движения или путешествия"
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont(name: "Rubik-Regular", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var labelTwo: UILabel = {
        let label = UILabel()
        label.text = "Вы можете изменить свой выбор в любое время из меню приложения"
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont(name: "Rubik-Regular", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var accessLocationButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 0.949, green: 0.431, blue: 0.067, alpha: 1)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.setTitle("ИСПОЛЬЗОВАТЬ МЕСТОПОЛОЖЕНИЕ УСТРОЙСТВА", for: .normal)
        button.titleLabel?.font = UIFont(name: "Rubik-Medium", size: 12)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var deniedLocationButton: UIButton = {
        let button = UIButton()
        button.setTitle("НЕТ, Я БУДУ ДОБАВЛЯТЬ ЛОКАЦИИ", for: .normal)
        button.contentHorizontalAlignment = .right
        button.titleLabel?.font = UIFont(name: "Rubik-Regular", size: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = UIColor(red: 0.125, green: 0.306, blue: 0.78, alpha: 1)
        
        view.addSubview(imageView)
        view.addSubview(label)
        view.addSubview(stackView)
        stackView.addArrangedSubview(labelOne)
        stackView.addArrangedSubview(labelTwo)
        view.addSubview(accessLocationButton)
        view.addSubview(deniedLocationButton)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 148),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 111),
            imageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.48),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: 1.09),
            
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 56),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26),
            
            stackView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 70),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            accessLocationButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 55),
            accessLocationButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            accessLocationButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
            accessLocationButton.heightAnchor.constraint(equalToConstant: 40),
            
            deniedLocationButton.topAnchor.constraint(equalTo: accessLocationButton.bottomAnchor, constant: 25),
            deniedLocationButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            deniedLocationButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
        ])
    }

}

