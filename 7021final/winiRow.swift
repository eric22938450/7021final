//
//  winiRow.swift
//  7021final
//
//  Created by User16 on 2020/6/24.
//  Copyright © 2020 ntou. All rights reserved.
//

import SwiftUI
let pi = 80
let pi3 = CGFloat(pi)
struct winiRow: View {
        @State var position="位置"
    var Leader: leader
    var body: some View {
        
        VStack{
        HStack {
            Image(Leader.name)
            .renderingMode(.original)
            .resizable()
            .scaledToFill()
                .frame(width: pi3, height: pi3)
            .clipped()
            
            VStack(alignment: .leading) {
                    
                Text(Leader.name)
                Text(Leader.country)
               
                    Text("喜愛度").contextMenu{
                        Button(action: {
                            
                        }) {
                        Text("超讚")
                         Image(systemName: "heart").imageScale(.small)
                        }
                        Button(action: {
                 
                        }) {
                        Text("普通")
                        Image(systemName: "heart").imageScale(.small)

                        }
                        Button(action: {
                    

                         }) {
                         Text("爛")
                         Image(systemName: "heart").imageScale(.small)

                         }
                    }
                    
                
            }
            Spacer()
        }
            Form{
                TextField("名字", text: $position)
                Text("位置").contextMenu{
                    Button(action: {
                        print("5555555")
                    }) {
                    Text("中鋒")
                     Image(systemName: "heart").imageScale(.small)
                    }
                    Button(action: {
                  print("2222")
                    }) {
                    Text("前鋒")
                    Image(systemName: "heart").imageScale(.small)

                    }
                    Button(action: {
                

                     }) {
                     Text("控衛")
                     Image(systemName: "heart").imageScale(.small)

                     }
                }
                
            }
        }
        }
        
    
    }


struct winiRow_Previews: PreviewProvider {
    static var previews: some View {
        winiRow(Leader: leaders[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
