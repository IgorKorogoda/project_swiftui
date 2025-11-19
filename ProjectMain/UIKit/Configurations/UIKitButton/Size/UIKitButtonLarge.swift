import Foundation


struct UIKitButtonLarge: UIKitButtonSize {
    
    let height: CGFloat = 46
//    var titlePadding: CGSize
    let contentInset: CGFloat = 16
    
}

extension UIKitButtonSize where Self == UIKitButtonLarge {
    static var large: UIKitButtonSize { UIKitButtonLarge() }
}
