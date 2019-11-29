//
//  ViewController.swift
//  SamCity
//
//  Created by Дмитрий Тараканов on 15.11.2019.
//  Copyright © 2019 Dmitry Angarsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let tableViewIdentifier = "TableViewCell"
    // Модель находиться в файле Model.swift
    var arrayData = [City(name: "Самара", prop: [CityInformation.population(1156644), .square(541), .yersOfFoundation(1586)]),
                     City(name: "Сызрань", prop: [CityInformation.population(173260), .square(117), .yersOfFoundation(1683)]),
                     City(name: "Тольятти", prop: [CityInformation.population(707408), .square(314), .yersOfFoundation(1737)]),
                     City(name: "Новокуйбышевск", prop: [CityInformation.population(102933), .square(86), .yersOfFoundation(1946)]),
                     City(name: "Чапаевск", prop: [CityInformation.population(72944), .square(187), .yersOfFoundation(1927)]),
                     City(name: "Жигулёвск", prop: [CityInformation.population(54343), .square(60), .yersOfFoundation(1952)]),
                     City(name: "Отрадный", prop: [CityInformation.population(47542), .square(53), .yersOfFoundation(1946)]),
                     City(name: "Кинель", prop: [CityInformation.population(35321), .square(36), .yersOfFoundation(1837)]),
                     City(name: "Похвистнево", prop: [CityInformation.population(28223), .square(64), .yersOfFoundation(1888)]),
                     City(name: "Октябрьск", prop: [CityInformation.population(26478), .square(21), .yersOfFoundation(1684)]),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: tableViewIdentifier, bundle: nil), forCellReuseIdentifier: tableViewIdentifier)
    }
}

extension ViewController: UITableViewDataSource {
    
    // Число строк в секции
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData[section].prop.count
    }
    // Настройка строки
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableViewIdentifier, for: indexPath) as! TableViewCell
        cell.configure(with: arrayData[indexPath.section].prop[indexPath.row])
        return cell
    }
    // Число секций
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayData.count
    }
    // Название header
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrayData[section].name
    }
    // Высота Header
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30.0
    }
}

