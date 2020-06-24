//
//  ContentView.swift
//  7021final
//
//  Created by User16 on 2020/6/24.
//  Copyright © 2020 ntou. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.gray
                HStack (){
                    NavigationLink(destination:safariView()){
                        Image("07")
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 300)
                            .clipped()
                        .clipShape(Circle())                        }
                    AnimationsView(name:"basketball").frame(width:100, height:350)                                }
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("聖安東尼奧馬刺隊")
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

