// Assuming both arrays are accessible, for example, through a shared data model

//func sortChoices(textFields: [String], weightages: [String], isHighPriority: Bool) -> [String] {
//    // Convert weightages to Double for sorting
//    let weightagesAsDouble = weightages.compactMap { Double($0) }
//    
//    // Zip the two arrays into an array of tuples
//    let combined = Array(zip(textFields, weightagesAsDouble))
//    
//    // Sort the array of tuples based on the weightages
//    let sorted = isHighPriority ? combined.sorted { $0.1 > $1.1 } : combined.sorted { $0.1 < $1.1 }
//    
//    // Extract the sorted textFields
//    return sorted.map { $0.0 }
//}
