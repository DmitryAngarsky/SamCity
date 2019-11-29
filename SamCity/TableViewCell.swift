//
//  TableViewCell.swift
//  SamCity
//
//  Created by Дмитрий Тараканов on 15.11.2019.
//  Copyright © 2019 Dmitry Angarsky. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cityName: UILabel!

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    // Присваеваем UILabel значения из каждой строки
    func configure(with prop: CityInformation) {
        
        self.cityName.text = "\(prop.label): \(prop.num)"
    }
}
