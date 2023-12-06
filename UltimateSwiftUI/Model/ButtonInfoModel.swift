//
//  ButtonInfoModel.swift
//  UltimateSwiftUI
//
//  Created by Manish Sharma on 07/12/23.
//

import SwiftUI

struct ButtonInfoModel: Identifiable {
    var id: UUID = .init()
    var textNumber: String
    var textColor: String
    var backgroundColor: String
    var isOperation: Bool
    
    var number: Double {
        return Double(textNumber) ?? 0
    }
    
}
