import Foundation


struct UIKitButtonMedium: UIKitButtonSize {

    let height: CGFloat = 32
//    var titlePadding: CGSize
    let contentInset: CGFloat = 12
    
    init(widht: Int) {
        
    }
}


extension UIKitButtonSize where Self == UIKitButtonMedium {
    static var medium: UIKitButtonMedium { UIKitButtonMedium(widht: 45)  }
}
