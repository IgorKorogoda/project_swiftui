import SwiftUI

struct UIKitButtonSecondary: UIKitButtonAppearance {
    
    let font: Font = .title3
    let weight: Font.Weight = .thin
    let foregroundColor: Color = .white
    let backgroundColor: Color = .green
    
}

extension UIKitButtonAppearance where Self == UIKitButtonSecondary {
    static var secondary: UIKitButtonAppearance { UIKitButtonSecondary()  }
}
