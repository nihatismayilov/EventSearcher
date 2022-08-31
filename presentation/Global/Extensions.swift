//
//  Extensions.swift
//  presentation
//
//  Created by Nazim Asadov on 30.08.22.
//

import Foundation
import UIKit

extension UILabel {
    func getFont(name: String){
        let poppins = UIFont(name: name, size: UIFont.labelFontSize)
        self.font = UIFontMetrics.default.scaledFont(for: poppins ?? UIFont.systemFont(ofSize: UIFont.labelFontSize))
        self.adjustsFontForContentSizeCategory = true
    }
}
