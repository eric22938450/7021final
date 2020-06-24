//
//  ballView.swift
//  7021final
//
//  Created by User16 on 2020/6/24.
//  Copyright © 2020 ntou. All rights reserved.
//

import SwiftUI
import Lottie

struct ballView: View {
    var body: some View {
AnimationsView(name:"basketball").frame(width:300, height:250)    }
    

}



struct ballView_Previews: PreviewProvider {
    static var previews: some View {
        ballView()
    }
}
