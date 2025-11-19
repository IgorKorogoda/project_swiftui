import SwiftUI

// MARK: - UIKitButtonSize
public protocol UIKitButtonSize {
    var height: CGFloat { get }
//    var titlePadding: CGSize  { get }
    var contentInset: CGFloat { get }
}

// MARK: - UIKitButtonAppearance
protocol UIKitButtonAppearance {
    var weight: Font.Weight { get }
    var font: Font { get }
    var foregroundColor: Color { get }
    var backgroundColor: Color { get }
}

// MARK: - UIKitButtonType
protocol UIKitButtonType {
    var `default`: UIKitButtonAppearance { get }
    var enabled: UIKitButtonAppearance { get }
    var pressed: UIKitButtonAppearance { get }
    var dissabled: UIKitButtonAppearance { get }
}

enum UIKitButtonState {
    case `default`
    case enabled
    case pressed
    case dissabled
}


// MARK: - UIKitButton

struct UIKitButton : View {
    
    private let title: String
    private let isExpanded: Bool
    private let type : UIKitButtonType
    private let size: UIKitButtonSize
    private let state: UIKitButtonState
    private let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
           text
        }
        .disabled(state == .dissabled)
        .buttonStyle(
            UIKitButtonStyle(
                isExpanded: isExpanded,
                appearance: stateConfiguration,
                type: type,
                size: size
            )
        )
    }
    init(
        title: String,
        isExpanded: Bool,
        type: UIKitButtonType,
        size: UIKitButtonSize,
        state: UIKitButtonState,
        action: @escaping () -> Void // что такое @escaping
    ) {
        self.title = title
        self.isExpanded = isExpanded
        self.type = type
        self.size = size
        self.state = state
        self.action = action
    }
}


// MARK: - State configuration
private extension UIKitButton {
    
    var stateConfiguration: UIKitButtonAppearance {
        switch state {
        case.default: type.default
        case.enabled: type.enabled
        case.pressed: type.pressed
        case.dissabled: type.dissabled
        }
    }
    
}


// MARK: - Text

private extension UIKitButton {
    
    var text : some View {
         Text(title)
            .font(stateConfiguration.font.weight(stateConfiguration.weight))
    }
    
}


// MARK: - Button style

private extension UIKitButton {
    
    struct UIKitButtonStyle: ButtonStyle {
        private let isExpanded: Bool
        private let appearance: UIKitButtonAppearance
        private let type: UIKitButtonType
        private let size: UIKitButtonSize
        
        init(
            isExpanded: Bool,
            appearance: UIKitButtonAppearance,
            type: UIKitButtonType,
            size: UIKitButtonSize
        ) {
            self.isExpanded = isExpanded
            self.appearance = appearance
            self.type = type
            self.size = size
        }
        
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .if(isExpanded) { label in
                    label.frame(maxWidth: .infinity)
                }
                .frame(height: size.height)
                .foregroundColor(configuration.isPressed ? type.pressed.foregroundColor : appearance.foregroundColor)
                .background(configuration.isPressed ? type.pressed.backgroundColor : appearance.backgroundColor)
                .cornerRadius(6)
        }
        
    }
    
}


extension View {
    /// Applies the given transform if the given condition evaluates to `true`.
    ///
    /// - Parameters:
    ///   - condition: The condition to evaluate.
    ///   - transform: The transform to apply to the source `View`.
    ///
    /// - Returns: Either the original `View` or the modified `View` if the condition is `true`.
    @ViewBuilder
    func `if`<Content: View>(
        _ condition: Bool,
        transform: (Self) -> Content
    ) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}


// MARK: - Preview

#Preview {
    UIKitButton(
        title: "The Big Title",
        isExpanded: false,
        type: .primary,
        size: .large,
        state: .default) {
            print("Кнопка 1")
        }
}
