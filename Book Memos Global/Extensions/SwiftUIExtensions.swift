//
//  SwiftUIExtensions.swift
//  Book Memos Global
//
//  Created by Erdem Koçer on 7.07.2021.
//

import UIKit
import SwiftUI


extension View {
    func hidden(_ shouldHide: Bool) -> some View {
        opacity(shouldHide ? 0 : 1)
    }
}
