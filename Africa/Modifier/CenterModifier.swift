//
//  CenterModifier.swift
//  Africa
//
//  Created by Aderemilekun Adele on 08/12/2023.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
