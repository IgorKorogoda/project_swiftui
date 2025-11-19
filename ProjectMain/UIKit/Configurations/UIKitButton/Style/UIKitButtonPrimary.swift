import SwiftUI

struct UIKitButtonPrimary: UIKitButtonType {
    let `default`: any UIKitButtonAppearance = UIKitButtonPrimaryDefault()
    let enabled: any UIKitButtonAppearance = UIKitButtonPrimaryEnabled()
    let pressed: any UIKitButtonAppearance = UIKitButtonPrimaryPressed()
    let dissabled: any UIKitButtonAppearance = UIKitButtonPrimaryDisabled()
}

private struct UIKitButtonPrimaryDefault: UIKitButtonAppearance {
    let font: Font = .title
    let weight: Font.Weight = .regular
    let foregroundColor: Color = Color(uiColor: .systemBackground)
    let backgroundColor: Color = Color(uiColor: .label)
}

private struct UIKitButtonPrimaryEnabled: UIKitButtonAppearance {
    let font: Font = .title
    let weight: Font.Weight = .regular
    let foregroundColor: Color = Color(uiColor: .systemBackground).opacity(0.9)
    let backgroundColor: Color = Color(uiColor: .label).opacity(0.9)
}

private struct UIKitButtonPrimaryPressed: UIKitButtonAppearance {
    let font: Font = .title
    let weight: Font.Weight = .regular
    let foregroundColor: Color = Color(uiColor: .systemBackground).opacity(0.4)
    let backgroundColor: Color = Color(uiColor: .label).opacity(0.4 )
}

private struct UIKitButtonPrimaryDisabled: UIKitButtonAppearance {
    let font: Font = .title
    let weight: Font.Weight = .regular
    let foregroundColor: Color = .gray.opacity(0.3)
    let backgroundColor: Color = .gray
}

extension UIKitButtonType where Self == UIKitButtonPrimary {
    static var primary: UIKitButtonType { UIKitButtonPrimary()  }
}
