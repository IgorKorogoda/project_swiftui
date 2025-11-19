import SwiftUI

struct UIKitButtonDestructive: UIKitButtonAppearance {
    
    let font: Font = .body
    let weight: Font.Weight = .bold
    let foregroundColor: Color = .white
    let backgroundColor: Color = .red
    
}

extension UIKitButtonAppearance where Self == UIKitButtonDestructive {
    static var destructive: UIKitButtonAppearance { UIKitButtonDestructive()  }
}
