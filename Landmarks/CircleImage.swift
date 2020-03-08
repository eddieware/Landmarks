//
//  CircleImage.swift
//  Landmarks
//
//  Created by EDUARDO MEJIA on 06/03/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        
         image
        .clipShape(Circle())
            //.overlay(Circle().stroke(Color.gray,lineWidth: 2))
            .overlay(
            Circle().stroke(Color.gray,lineWidth: 2)).shadow(radius: 10)
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
         CircleImage(image: Image("turtlerock"))
    }
}
