import Foundation
import UIKit


//protocol FontLoader: AnyObject {
//    static func loadFonts()
//}

class FontLoaderImp {
    
    static func loadFonts() {
        let font = (Bundle(for: self).urls(forResourcesWithExtension: "otf", subdirectory: nil) ?? [])
    }
    
}
