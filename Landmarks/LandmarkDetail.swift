//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by EDUARDO MEJIA on 07/03/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark

    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                //la referencia es el marco del map view
                
            .offset(y: -130)
            .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(.white)//debido a que mi tema es negro no se ve el titulo si no es con blanco
                HStack(alignment: .top) {
                   Text(landmark.park)
                        .font(.subheadline)
                     Spacer()
                    Text(landmark.state)
                    .font(.subheadline)
                }
                
            }//fin VStack interno
                .padding()
            Spacer()
        }//fin Vstack Externo
         .navigationBarTitle(Text(landmark.name), displayMode: .inline)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       LandmarkDetail(landmark: landmarkData[0])
    }
}

