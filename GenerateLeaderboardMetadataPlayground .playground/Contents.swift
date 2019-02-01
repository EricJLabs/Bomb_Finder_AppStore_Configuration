import UIKit

let sizes = Array(4...16)

let text = sizes.map { size -> [String] in
    let level = Array(1...3)

    return level.map { level -> String in
        
        let percent: Double
        switch level {
            case 1:
            percent = 0.124  // easy
            case 2:
            percent = 0.16// intermediate
            default:
            percent = 0.20 // hard
        }
        let numBombs = Int(Double(size * size) * percent)

        
        let metadata = "com.ericjlabs.bomb_finder_\(size)_\(numBombs),Size \(size) Bombs \(numBombs),TRUE"
        print(metadata)
        return metadata
    }
}
