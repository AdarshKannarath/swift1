import SwiftUI

struct ResultView: View {
    var sortedOptions: [Option]

    var body: some View {
        List(sortedOptions, id: \.text) { option in
            Text("\(option.text) - \(option.weight)")
        }
        .navigationBarTitle("Sorted Options")
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(sortedOptions: [])
    }
}
