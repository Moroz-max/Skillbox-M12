//
//  ViewController.swift
//  module12
//
//  Created by Mac on 24.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Views
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Constants.Image.star
        imageView.tintColor = traitCollection.userInterfaceStyle == .dark ? .yellow : .green
        return imageView
    }()
    
    private lazy var label1: UILabel = {
        let label = UILabel()
        label.text = Constants.Text.Animals
        label.textColor = Constants.Colors.grey4
        label.font = Constants.Fonts.HelveticaNeue
        return label
    }()
    
    private lazy var label2: UILabel = {
        let label = UILabel()
        label.text = Constants.Text.Cat
        label.textColor = Constants.Colors.grey3
        label.font = Constants.Fonts.GeorgiaBold
        return label
    }()
    
    private lazy var label4: UILabel = {
        let label = UILabel()
        label.text = Constants.Text.Bird
        label.textColor = Constants.Colors.grey2
        label.font = Constants.Fonts.copperplateLight
        return label
    }()
    
    private lazy var label3: UILabel = {
        let label = UILabel()
        let string = "Hello,world!"
        let attributedString: NSMutableAttributedString = NSMutableAttributedString(string: string)
        if let commaIndex = string.firstIndex(of: ",") {
            attributedString.addAttribute(
                .foregroundColor,
                value: UIColor.systemRed,
                range: NSRange(string.startIndex ..< commaIndex, in: string)
            )
            
            attributedString.addAttributes(
                [NSAttributedString.Key.font:  UIFont(name: "Chalkduster", size: 30.0)!], range: NSRange(string.startIndex ..< commaIndex, in: string))
            
            attributedString.addAttribute(
                .foregroundColor,
                value: UIColor.systemBlue,
                range: NSRange(commaIndex ..< string.endIndex, in: string)
                )
            
            attributedString.addAttributes(
            [NSAttributedString.Key.font:  UIFont(name: "Kailasa-Bold", size: 35.0)!], range: NSRange(commaIndex ..< string.endIndex, in: string)
            )
        }
        
        label.attributedText = attributedString
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView ()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 16
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)
        stackView.addArrangedSubview(label3)
        stackView.addArrangedSubview(label4)
        return stackView
    }()

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        updateImageColor()
    }

    // MARK: - Private
    
    private func setupViews() {
        view.addSubview(stackView)
    }
    
    private func setupConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        stackView.widthAnchor.constraint(equalToConstant: 250).isActive = true
    }
    
    private func updateImageColor() {
        if traitCollection.userInterfaceStyle == .dark {
            imageView.tintColor = .yellow
        }else{
            imageView.tintColor = .green
        }
    }
}

