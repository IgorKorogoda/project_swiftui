import Foundation


struct UIKitButtonSmall: UIKitButtonSize {

    let height: CGFloat = 24 
//    var titlePadding: CGSize
    let contentInset: CGFloat = 8
    
}

extension UIKitButtonSize where Self == UIKitButtonSmall {
    static var small: UIKitButtonSmall { UIKitButtonSmall() }
}
