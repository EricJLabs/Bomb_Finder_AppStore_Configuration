import UIKit

enum Level: CaseIterable {
    case easy
    case intermediate
    case hard
    
    func asString(language: String) -> String {
        switch self {
        case .easy:
            switch language {
            case "en":
                return "Easy"
            case "de":
                return "Einfach"
            case "es":
                return "Fácil"
            case "fr":
                return "Facile"
            case "it":
                return "Facile"
            case "ja":
                return "簡単"
            case "ko":
                return "쉬운"
            case "ru":
                return "Легко"
            case "sv":
                return "Lätt"
            case "tr":
                return "Kolay"
            case "zh":
                return "简单"
            default:
                return "Easy"
            }
        case .intermediate:
            switch language {
            case "en":
                return "Intermediate"
            case "de":
                return "Mittlere"
            case "es":
                return "Intermedio"
            case "fr":
                return "Intermédiaire"
            case "it":
                return "Intermedio"
            case "ja":
                return "中級"
            case "ko":
                return "중급"
            case "ru":
                return "промежуточный"
            case "sv":
                return "Mellanliggande"
            case "tr":
                return "Orta düzey"
            case "zh":
                return "中间"
            default:
                return "Intermediate"
            }
        case .hard:
            switch language {
            case "en":
                return "Hard"
            case "de":
                return "Schwer"
            case "es":
                return "Difícil"
            case "fr":
                return "Difficile"
            case "it":
                return "Difficile"
            case "ja":
                return "ハード"
            case "ko":
                return "단단한"
            case "ru":
                return "Жесткий"
            case "sv":
                return "Hård"
            case "tr":
                return "Zor"
            case "zh":
                return "硬"
            default:
                return "Hard"
            }
        }
    }
}

let sizes = Array(4...17)

let text = sizes.map { size -> [String] in
    
    return Level.allCases.map { level -> String in
        
        let percent: Double
        switch level {
        case .easy:
            percent = 0.124  // easy
        case .intermediate:
            percent = 0.16// intermediate
        case .hard:
            percent = 0.20 // hard
        }
        let bombs = Int(Double(size * size) * percent)

        let en = "com.ericjlabs.bomb_finder_\(size)_\(bombs),en-US,Size \(size) Level \(level.asString(language: "en")),ELAPSED_TIME_TO_HUNDREDTH_OF_SECOND,bomb.png"
        let de = "com.ericjlabs.bomb_finder_\(size)_\(bombs),de-DE,Größe \(size) Niveau \(level.asString(language: "de")),ELAPSED_TIME_TO_HUNDREDTH_OF_SECOND,bomb.png"
        let es = "com.ericjlabs.bomb_finder_\(size)_\(bombs),es-MX,Talla \(size) Nivel \(level.asString(language: "es")),ELAPSED_TIME_TO_HUNDREDTH_OF_SECOND,bomb.png"
        let fr = "com.ericjlabs.bomb_finder_\(size)_\(bombs),fr-FR,Taille \(size) Niveau \(level.asString(language: "fr")),ELAPSED_TIME_TO_HUNDREDTH_OF_SECOND,bomb.png"
        let it = "com.ericjlabs.bomb_finder_\(size)_\(bombs),it,Dimensione \(size) Livello \(level.asString(language: "it")),ELAPSED_TIME_TO_HUNDREDTH_OF_SECOND,bomb.png"
        let ja = "com.ericjlabs.bomb_finder_\(size)_\(bombs),ja,サイズ\(size)レベル\(level.asString(language: "ja")),ELAPSED_TIME_TO_HUNDREDTH_OF_SECOND,bomb.png"
        let ko = "com.ericjlabs.bomb_finder_\(size)_\(bombs),ko,크기 \(size) 수평 \(level.asString(language: "ko")),ELAPSED_TIME_TO_HUNDREDTH_OF_SECOND,bomb.png"
        let ru = "com.ericjlabs.bomb_finder_\(size)_\(bombs),ru,Размер \(size) уровень \(level.asString(language: "ru")),ELAPSED_TIME_TO_HUNDREDTH_OF_SECOND,bomb.png"
        let sv = "com.ericjlabs.bomb_finder_\(size)_\(bombs),sv,Storlek \(size) Nivå \(level.asString(language: "sv")),ELAPSED_TIME_TO_HUNDREDTH_OF_SECOND,bomb.png"
        let tr = "com.ericjlabs.bomb_finder_\(size)_\(bombs),tr,Boyut \(size) Seviye \(level.asString(language: "tr")),ELAPSED_TIME_TO_HUNDREDTH_OF_SECOND,bomb.png"
        let zh = "com.ericjlabs.bomb_finder_\(size)_\(bombs),zh-Hans,\(size)水平\(level.asString(language: "zh")),ELAPSED_TIME_TO_HUNDREDTH_OF_SECOND,bomb.png"
        print(en)
        print(de)
        print(es)
        print(fr)
        print(it)
        print(ja)
        print(ko)
        print(ru)
        print(sv)
        print(tr)
        print(zh)

        return en + de + es + fr + it + ja + ko + ru + sv + tr + zh
    }
}

