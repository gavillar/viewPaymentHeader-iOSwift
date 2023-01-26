//
//  String.swift
//  appDeliveryGabriel
//
//  Created by user220831 on 1/26/23.
//

import Foundation
import UIKit

extension String {
    func addColor(_ color: UIColor, toSubstring substring: String) -> NSAttributedString {
        let range = self.range(of: substring)
        let attributedString = NSMutableAttributedString(string: self)
        attributedString.addAttribute(.foregroundColor, value: color, range: NSRange(range!, in: self))
        return attributedString
    }
}
