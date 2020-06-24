//
//  leaderDetail.swift
//  7021final
//
//  Created by User16 on 2020/6/24.
//  Copyright © 2020 ntou. All rights reserved.
//

import SwiftUI
import Lottie
struct leaderDetail: View {
    var Leader: leader
    var body: some View {
        VStack {
            Image(Leader.name)
                .resizable()
                .scaledToFill()
                .frame(width: 199, height: 200)
                .clipped()
            Text(Leader.intro)
            .padding()
        }
                .navigationBarTitle(Leader.name)
        
    }
}

struct leaderDetail_Previews: PreviewProvider {
    static var previews: some View {
        leaderDetail(Leader: leaders[0])
    }
}
