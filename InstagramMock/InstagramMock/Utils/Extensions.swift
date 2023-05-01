//
//  Extensions.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 4/30/23.
//

import UIKit

extension UIApplication {
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

