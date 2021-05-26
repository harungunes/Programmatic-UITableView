//
//  CapitalViewController.swift
//  CountryAndCapital
//
//  Created by Harun Gunes on 26/05/2021.
//

import UIKit

class CapitalViewController: UIViewController {
    
  var capitalLabel = UILabel()
  var capitalName = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    configureCapitalLabel()
  }
  
  func configureCapitalLabel() {
    
    view.backgroundColor = .white
    capitalLabel.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(capitalLabel)
    capitalLabel.text = capitalName
    
    
    
    capitalLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    capitalLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
  }
}


