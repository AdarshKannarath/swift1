//
//  ContentView.swift
//  MCDM
//
//  Created by AL12 on 26/02/24.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()

                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()

                Text("Let's prioritize your choices!")
                    .font(.title)
                    .padding()

                NavigationLink(destination: Login().navigationBarBackButtonHidden(true)) {
                    Text("NEXT")
                        .font(.title2)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                }
            }
            //.navigationTitle("")
            
        }
    }
}
//
//struct Guide: View {
//    var body: some View {
//        Text("NEXT")
//    }
//}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
