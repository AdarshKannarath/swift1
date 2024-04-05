import SwiftUI
import SceneKit

struct CriteriaView: View {
    var textFields: [String]
    @State private var weightages: [String] = Array(repeating: "", count: 10)
    @State private var isHighPriority = false
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Enter Criterias")
                    .font(.title)
                    .padding(.top)
                
                ForEach(0..<textFields.count, id: \.self) { index in
                    TextField("Enter weightage for \(textFields[index]):", text: $weightages[index])
                        .keyboardType(.numberPad)
                        .padding(5)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                Toggle(isOn: $isHighPriority) {
                    Text("High Value, High Priority:")
                }
                .padding(5)
                
                NavigationLink(destination: ResultView(sortedOptions: sortOptions())) {
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
    
    private func sortOptions() -> [Option] {
        let weights = weightages.compactMap { Double($0) }
        let combined = zip(textFields, weights)
        let sorted = isHighPriority ? combined.sorted { $0.1 > $1.1 } : combined.sorted { $0.1 < $1.1 }
        return sorted.map { Option(text: $0.0, weight: $0.1) }
    }
}

struct CriteriaView_Previews: PreviewProvider {
    static var previews: some View {
        CriteriaView(textFields: ["Option 1", "Option 2", "Option 3", "Option 4", "Option 5", "Option 6", "Option 7", "Option 8", "Option 9", "Option 10"])
    }
}
