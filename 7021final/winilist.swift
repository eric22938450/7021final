//
//  winilist.swift
//  7021final
//
//  Created by User16 on 2020/6/24.
//  Copyright © 2020 ntou. All rights reserved.
//

import SwiftUI

struct winilist: View {
    var body: some View {
        
        NavigationView{
            VStack{
                ScrollView(.horizontal){
                    HStack(spacing: 80){
                        ForEach(0..<leaders.count){
                            (index)in
                            Image(leaders[index].name)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipped()
                            .cornerRadius(40)
                            
                            
                        }
                    }
                }
            List{
                Section(header:Text("球員")){
                    ForEach(0..<leaders.count)
                        {(index) in
                    NavigationLink(destination:leaderDetail(Leader: leaders[index])){
                            winiRow(Leader: leaders[index])}
                        }
                        }
                    }
                .onAppear {
                   UITableView
                    .appearance()
                    .separatorColor =
                    .clear
                }
            }
        .navigationBarTitle("代表球星")
        }
    }
}

struct winilist_Previews: PreviewProvider {
    static var previews: some View {
        winilist()
    }
}
