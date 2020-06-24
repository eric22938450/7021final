//
//  AppView.swift
//  7021final
//
//  Created by User16 on 2020/6/24.
//  Copyright © 2020 ntou. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                    
            }
            winilist()
                .tabItem {
                    Image(systemName: "book")
                    Text("歷年球星")
                    
            }
            
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
