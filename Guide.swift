//
//  Guide.swift
//  MCDM
//
//  Created by AL12 on 26/02/24.
//
import SwiftUI

struct Guide: View{
    var body: some View{
        NavigationView{
            VStack {
                Text("User Guide")
                    .font(.largeTitle)
                    .padding()

                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("1. Enter all the options you want to sort in the text field provided.")
                        Text("")
                        Text("2. Prioritize each option by assigning a weight to it. Tick the checkbox as per requirement of sorting.")
                        Text("")
                        Text("3. You can assign weights by numbers.")
                        Text("")
                        Text("4. Make sure to assign a unique weight to each option. Assigning the same weight to multiple options may result in unpredictable sorting results.")
                        Text("")
                        Text("5. Once you have entered all the options and assigned weights, tap the 'Next' button to see the sorted list of options.")
                        // Add more guidelines here
                    }
                    .padding()

                    
                }

                NavigationLink(destination: choice().navigationBarBackButtonHidden(true)) {
                    Text("Next")
                        .font(.title2)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                }
            }
        }
    }
}


struct Guide_Previews: PreviewProvider {
    static var previews: some View {
        Guide()
    }
}
