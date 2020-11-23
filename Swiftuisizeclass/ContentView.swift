//
//  ContentView.swift
//  Swiftuisizeclass
//
//  Created by Bill Martensson on 2020-11-23.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    @State var litetext = "Banan"
    
    var body: some View {
        VStack {
            if horizontalSizeClass == .compact
            {
                Text("COMPACT")
                    .padding()
                
                Button(action: {
                    letsClick(thetext: "PORTRAIT")
                }) {
                    Text("Tryck här")
                }
                
                TextField("Namn", text: $litetext)
                HStack {
                    FancybuttonView(fancyText: "Profile")
                    FancybuttonView(fancyText: "Settings")
                    FancybuttonView(fancyText: "Info")
                    
                }
                List {
                    Text("Listan")
                }
            }
            if horizontalSizeClass == .regular && verticalSizeClass != .regular
            {
                Text("REGULAR")
                    .padding()
                Button(action: {
                    letsClick(thetext: "LANDSCAPE")
                }) {
                    Text("Tryck här")
                }
                HStack {
                    VStack {
                        TextField("Namn", text: $litetext)
                            .frame(width: 80.0)
                        
                        FancybuttonView()
                        FancybuttonView()
                        FancybuttonView()
                        
                        
                        Spacer()
                    }
                    
                    List {
                        Text("Listan")
                    }
                }
                
            }
            if horizontalSizeClass == .regular && verticalSizeClass == .regular
            {
                Text("iPad")
                Button(action: {
                    letsClick(thetext: "ipad")
                }) {
                    Text("Tryck här")
                }
                TextField("Namn", text: $litetext)
                
                List {
                    Text("Listan")
                }
            }
            
        }
    }
    
    func letsClick(thetext : String)
    {
        print("Vi har tryckt på knappen \(thetext)")
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
            .previewDevice("iPhone 12")
        
        ContentView()
            .previewLayout(.fixed(width: 2688/2, height: 1242/2))
            .previewDevice("iPhone 12")
            
        
        
        ContentView()
            .previewDevice("iPad Pro (12.9-inch) (4th generation)")
        
        
    }
}
