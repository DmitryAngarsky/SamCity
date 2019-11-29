//
//  Model.swift
//  SamCity
//
//  Created by Дмитрий Тараканов on 19.11.2019.
//  Copyright © 2019 Dmitry Angarsky. All rights reserved.
//

// Структура для хранения названия города и информации о нём
public struct City {
    let name: String
    let prop: [CityInformation]
}
// Перечисление хранящее информацию о городе
public enum CityInformation {

    case population      (Int, text: String = "Население")
    case square          (Int, text: String = "Площадь")
    case yersOfFoundation(Int, text: String = "Год основания")
    
    var label: String {
        switch self {
            case .population(_ , let text):       return text
            case .square    (_ , let text):       return text
            case .yersOfFoundation(_ , let text): return text
        }
    }
    
    var num: Int {
        switch self {
        case .population(let value, _):       return value
        case .square    (let value, _):       return value
        case .yersOfFoundation(let value, _): return value
        }
    }
}
