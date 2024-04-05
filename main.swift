import SwiftUI

struct ContentView: View {
    @State private var inputText: String = ""

    var body: some View {
        VStack {
            Text("Enter Choices")
                .font(.title)
                .padding(.bottom)
            
            TextField("Enter your choice here", text: $inputText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                // Handle the action when the Next button is tapped
                print("Next button tapped with input: \(inputText)")
            }) {
                Text("Next")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.top)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
