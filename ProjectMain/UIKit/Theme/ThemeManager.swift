import SwiftUI

final class ThemeManager: ObservableObject {
    
    @Published var currentThemeType: ThemeTypes = .light
    
    @Published var themes: [ThemeTypes: Theme]
    
    var currentTheme: Theme {
        themes[currentThemeType]!
    }
    
    init(
        themes: [ThemeTypes : Theme] = [:],
        currentThemeType: ThemeTypes = .light
    ) {
        self.themes = themes
        self.currentThemeType = currentThemeType
    }
}
