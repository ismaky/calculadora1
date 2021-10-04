//
//  ViewController.swift
//  Calculadora1
//
//  Created by Ismael on 03/10/21.
//

import UIKit

class ViewController: UIViewController {

    
    private func button(name: String, color: UIColor)-> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = color
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.addConstraint(NSLayoutConstraint(item: button,
               attribute: .height,
               relatedBy: .equal,
               toItem: button,
               attribute: .width,
               multiplier: 1 / 1,
               constant: 0))
        button.setTitle(name, for: .normal)
                return button
            }
            
            private let zero: UILabel = {
                let lb = UILabel()
                
                lb.text = "0"
                lb.translatesAutoresizingMaskIntoConstraints = false
                lb .textColor = .white
                lb.font = UIFont.systemFont(ofSize: 70)
                lb.textAlignment = .right
            return lb
            }()
            
            private lazy var ac: UIButton = {
                return button(name: "ac", color: .gray)
            }()
            
            private func newLine(_ rootStack: UIStackView) -> UIStackView {
                
                let line = UIStackView()
                line.spacing = 1
                
                let margins = view.layoutMarginsGuide
                
                rootStack.addArrangedSubview(line)
                
                line.axis = .horizontal
                line.translatesAutoresizingMaskIntoConstraints = false
                
                line.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
                line.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
            
                return line
            }
            override func viewDidLoad() {
                super.viewDidLoad()
                view.backgroundColor = .black
                
                let rootStack = UIStackView()
                
                let margins = view.layoutMarginsGuide
                
                view.addSubview(rootStack)
                rootStack.axis = .vertical
                rootStack.spacing = 1
                rootStack.distribution = .fillEqually
                
                rootStack.translatesAutoresizingMaskIntoConstraints = false
                rootStack.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
                rootStack.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
                rootStack.bottomAnchor.constraint(equalTo: margins.bottomAnchor).isActive = true
                
                let line0 = newLine(rootStack)
                
                line0.addSubview(zero)
                
                let line1 = newLine(rootStack)
                
                line1.addArrangedSubview(ac)
                line1.addArrangedSubview(button(name: "±", color: .gray))
                line1.addArrangedSubview(button(name: "%", color: .gray))
                line1.addArrangedSubview(button(name: "÷", color: .blue))

                let line2 = newLine(rootStack)
                
                line2.addArrangedSubview(button(name: "7", color: .darkGray))
                line2.addArrangedSubview(button(name: "8", color: .darkGray))
                line2.addArrangedSubview(button(name: "9", color: .darkGray))
                line2.addArrangedSubview(button(name: "×", color: .blue))
                
                let line3 = newLine(rootStack)
                
                line3.addArrangedSubview(button(name: "4", color: .darkGray))
                line3.addArrangedSubview(button(name: "5", color: .darkGray))
                line3.addArrangedSubview(button(name: "6", color: .darkGray))
                line3.addArrangedSubview(button(name: "-", color: .blue))
            
                let line4 = newLine(rootStack)
                
                line4.addArrangedSubview(button(name: "1", color: .darkGray))
                line4.addArrangedSubview(button(name: "2", color: .darkGray))
                line4.addArrangedSubview(button(name: "3", color: .darkGray))
                line4.addArrangedSubview(button(name: "+", color: .blue))
                
                let line5 = newLine(rootStack)
                
                let lineLeft = UIStackView()
                line5.addArrangedSubview(lineLeft)
                lineLeft.axis = .horizontal
                lineLeft.spacing = 1
                
                let b = button(name: "0", color: .darkGray)
                b.removeConstraints(b.constraints)
                lineLeft.addArrangedSubview(b)
                
                let lineRight = UIStackView()
                line5.addArrangedSubview(lineRight)
                lineRight.axis = .horizontal
                lineRight.spacing = 1
                
                let comma = button(name: ".", color: .darkGray)
                lineRight.addArrangedSubview(comma)
                lineRight.addArrangedSubview(button(name: "=", color: .blue))
            
            }


        }

