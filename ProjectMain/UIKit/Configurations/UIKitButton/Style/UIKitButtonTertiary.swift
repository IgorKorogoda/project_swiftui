import SwiftUI

struct UIKitButtonTertiary: UIKitButtonAppearance {
    
    let font: Font = .title
    let weight: Font.Weight = .semibold
    let foregroundColor: Color = Color(uiColor: .tertiaryLabel)
    let backgroundColor: Color = Color(uiColor: .tertiarySystemBackground)
    
}

extension UIKitButtonAppearance where Self == UIKitButtonTertiary {
    static var tertiary: UIKitButtonAppearance { UIKitButtonTertiary()   }
}
