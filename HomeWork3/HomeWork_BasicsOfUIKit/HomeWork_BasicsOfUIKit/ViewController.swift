//
//  ViewController.swift
//  HomeWork_BasicsOfUIKit
//
//  Created by Aisen Zhylkybay on 04.10.2023.
//

import UIKit

class ViewController: UIViewController {
    let nameLabel = SuperLabel()
    let educationLabel = SuperLabel()
    let textField1 = UITextField()
    let textField2 = UITextField()
    let submitButton = UIButton()


    override func viewDidLoad() {
        print("ViewController - viewDidLoad")
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("ViewController - viewWillAppear")
        super.viewWillAppear(animated)
    }

    override func viewDidAppear(_ animated: Bool) {
        print("ViewController - viewDidAppear")
        super.viewDidAppear(animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        print("ViewController - viewWillDisappear")
        super.viewWillDisappear(animated)
    }

    override func viewDidDisappear(_ animated: Bool) {
        print("ViewController - viewDidDisappear")
        super.viewDidDisappear(animated)
    }
    
    func setupView(){
        let compositeView = UIView()
        compositeView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(compositeView)
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: compositeView, attribute: .top, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .top, multiplier: 1, constant: 60),
            NSLayoutConstraint(item: compositeView, attribute: .leading, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .leading, multiplier: 1, constant: 64),
            NSLayoutConstraint(item: compositeView, attribute: .trailing, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .trailing, multiplier: 1, constant: -64),
            NSLayoutConstraint(item: compositeView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 128)
        ])
        compositeView.layer.cornerRadius = 16
        compositeView.clipsToBounds = true
        
        let image = UIImage(named: "PepeImage")
        let imageRadius: CGFloat = 75
        let imageView = SuperImage.init(image: image, imageRadius: imageRadius)
        compositeView.addSubview(imageView)
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: imageView, attribute: .centerY, relatedBy: .equal, toItem: compositeView, attribute: .centerY, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: imageView, attribute: .leading, relatedBy: .equal, toItem: compositeView, attribute: .leading, multiplier: 1, constant: 10),
            NSLayoutConstraint(item: imageView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: imageRadius),
            NSLayoutConstraint(item: imageView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: imageRadius)
        ])
        
        compositeView.addSubview(nameLabel)
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: nameLabel, attribute: .centerX, relatedBy: .equal, toItem: compositeView, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: nameLabel, attribute: .centerY, relatedBy: .equal, toItem: compositeView, attribute: .centerY, multiplier: 1, constant: -15)
        ])
        

        compositeView.addSubview(educationLabel)
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: educationLabel, attribute: .centerX, relatedBy: .equal, toItem: compositeView, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: educationLabel, attribute: .centerY, relatedBy: .equal, toItem: compositeView, attribute: .centerY, multiplier: 1, constant: 15)
        ])
        
        compositeView.backgroundColor = UIColor.init(red: 79.0/255.0, green: 119.0/255.0, blue: 217.0/255.0, alpha: 1)
        
        

        textField1.borderStyle = .roundedRect
        textField1.placeholder = "Name"
        textField1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textField1)

        textField2.borderStyle = .roundedRect
        textField2.placeholder = "Education"
        textField2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textField2)

        // Configure submitButton
        submitButton.setTitle("Submit", for: .normal)
        submitButton.backgroundColor = .yellow
        submitButton.setTitleColor(.systemBlue, for: .normal)
        submitButton.layer.cornerRadius = 10
        submitButton.clipsToBounds = true
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        submitButton.addTarget(self, action: #selector(handleSubmit), for: .touchUpInside)
        view.addSubview(submitButton)
        
        
        NSLayoutConstraint.activate([
            textField1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField1.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -30),
            textField1.widthAnchor.constraint(equalToConstant: 200),
            
            textField2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField2.topAnchor.constraint(equalTo: textField1.bottomAnchor, constant: 10),
            textField2.widthAnchor.constraint(equalToConstant: 200),
            
            submitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            submitButton.topAnchor.constraint(equalTo: textField2.bottomAnchor, constant: 20),
            submitButton.widthAnchor.constraint(equalToConstant: 220)
        ])
        
    }
    
    @objc private func handleSubmit() {
        if(textField1.text != ""){
            nameLabel.text = textField1.text
        }
        
        if(textField2.text != ""){
            educationLabel.text = textField2.text
        }
        
        textField1.text = ""
        textField2.text = ""
    }
}

