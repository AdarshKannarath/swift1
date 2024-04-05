import SwiftUI

struct choice: View {
    @State private var textFields: [String] = Array(repeating: "", count: 10)
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Enter your Options")
                    .font(.title)
                    .padding(.bottom)
                
                ForEach(0..<textFields.count, id: \.self) { index in
                    TextField("Enter option : ", text: $textFields[index])
                        .padding(.vertical, 6)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(height:50)
                        .foregroundColor(.blue)
                }
                
                NavigationLink(destination: CriteriaView(textFields: textFields).navigationBarBackButtonHidden(true)) {
                    Text("Next")
                        .font(.title2)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.top)
            }
            .padding()
        }
    }
}

struct choice_Previews: PreviewProvider {
    static var previews: some View {
        choice()
    }
}
