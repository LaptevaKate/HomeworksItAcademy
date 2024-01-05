//
//  SettingsDelegate.swift
//  Homework7
//
//  Created by Екатерина Лаптева on 5.01.24.
//

import Foundation

protocol SettingsDelegate: AnyObject {
    var config: AccountModel { get set }
    func saveAccountModel(_ config: AccountModel)
}
