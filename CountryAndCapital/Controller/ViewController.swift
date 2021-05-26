//
//  ViewController.swift
//  CountryAndCapital
//
//  Created by Harun Gunes on 25/05/2021.
//

import UIKit

class ViewController: UIViewController {
  
  private let tableView = UITableView()
  
  private let countriesAndCapitals = [
    Place(country: "Turkey", capital: "Ankara"),
    Place(country: "Poland", capital: "Warsaw"),
    Place(country: "Germany", capital: "Berlin"),
    Place(country: "Malaysia", capital: "Kuala Lumpur"),
    Place(country: "Israel", capital: "Tel Aviv"),
    Place(country: "France", capital: "Paris"),
    Place(country: "Spain", capital: "Madrid"),
    Place(country: "Venezuela", capital: "Caracas"),
    Place(country: "Bolivia", capital: "La Paz"),
    Place(country: "Brazil", capital: "Rio")
  ]

  override func viewDidLoad() {
    super.viewDidLoad()

    configureTableView()
  }
  
  func configureTableView() {
    tableView.backgroundColor = .white
    tableView.delegate = self
    tableView.dataSource = self
    
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    
    tableView.frame = view.frame
    view.addSubview(tableView)
  }
}

extension ViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    let capitalVC = CapitalViewController()
    capitalVC.capitalName = countriesAndCapitals[indexPath.row].capital
    
    self.navigationController?.pushViewController (capitalVC, animated: true)
  }
}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return countriesAndCapitals.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    cell.textLabel?.text = countriesAndCapitals[indexPath.row].country
    return cell
  }

}
