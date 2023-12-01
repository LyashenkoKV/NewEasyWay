//
//  ShippingDatabase.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 29.11.2023.
//

import Foundation

struct ShippingDatabase {
    static var countries: [String: [TransportType: [String]]] = [
        "Китай": [
            .auto: ["Пекин", "Хэйхэ", "Маньчжурия", "Суйфэньхэ"],
            .air: ["Пекин", "Гуанчжоу", "Шанхай", "Гонконг"],
            .railway: ["Гуанчжоу", "Иу"],
            .sea: ["Гуанчжоу", "Шанхай", "Шэньчжэнь", "Гонконг", "Нинбо", "Далянь", "Циндао", "Тяньцзинь", "Сямынь"]
        ],
        "Россия": [
            .auto: ["Благовещенск", "Забайкальск", "Уссурийск"],
            .air: ["Шереметьево"],
            .railway: ["Ворсино", "Ворсино* (*РБ)"],
            .sea: ["Новороссийск", "Владивосток", "Санкт-Петербург"]
        ],
        "Турция": [
            .auto: [],
            .air: [],
            .railway: [],
            .sea: ["Стамбул"]
        ]
    ]
}
