//
//  FancybuttonView.swift
//  Swiftuisizeclass
//
//  Created by Bill Martensson on 2020-11-23.
//

import SwiftUI

struct FancybuttonView: View {
    
    var fancyText = "ABC"
    
    var body: some View {
        VStack {
            Text(fancyText)
            Button(action: {}) {
                Text("Tryck här")
            }
        }
        .padding()
        .background(Color.yellow)
    }
}

struct FancybuttonView_Previews: PreviewProvider {
    static var previews: some View {
        FancybuttonView()
            .previewLayout(.sizeThatFits)
    }
}
