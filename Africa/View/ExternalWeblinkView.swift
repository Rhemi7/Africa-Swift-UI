//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Aderemilekun Adele on 05/12/2023.
//

import SwiftUI

struct ExternalWeblinkView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    // MARL: - BODY
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "aarrow.up.right.square")
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }        }
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
