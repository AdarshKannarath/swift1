import SwiftUI

struct ContentView: View {
    @State private var selectedOptions: [[Bool]] = Array(repeating: Array(repeating: false, count: 4), count: 3)
    @State private var currentQuestionIndex: Int = 0

    private let questions = [
        "Question 1",
        "Question 2",
        "Question 3"
    ]

    private let options = [
        ["Option 1", "Option 2", "Option 3", "Option 4"],
        ["Option A", "Option B", "Option C", "Option D"],
        ["Option X", "Option Y", "Option Z", "Option W"]
    ]

    var body: some View {
        VStack {
            Text(questions[currentQuestionIndex])
                .font(.title)
                .padding()

            ForEach(0..<options[currentQuestionIndex].count, id: \.self) { index in
                HStack {
                    CheckBox(isChecked: self.$selectedOptions[self.currentQuestionIndex][index])
                    Text(self.options[self.currentQuestionIndex][index])
                        .padding()
                    Spacer()
                }
                .padding(.horizontal)
            }

            Spacer()

            HStack {
                Button("Back") {
                    if self.currentQuestionIndex > 0 {
                        self.currentQuestionIndex -= 1
                    }
                }
                .padding()

                Button("Next") {
                    if self.currentQuestionIndex < self.questions.count - 1 {
                        self.currentQuestionIndex += 1
                    }
                }
                .padding()
                .disabled(!self.selectedOptions[self.currentQuestionIndex].contains(true))
            }
        }
        .padding()
    }
}

struct CheckBox: View {
    @Binding var isChecked: Bool

    var body: some View {
        Button(action: {
            self.isChecked.toggle()
        }) {
            Image(systemName: isChecked ? "checkmark.square.fill" : "square")
                .resizable()
                .frame(width: 24, height: 24)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
