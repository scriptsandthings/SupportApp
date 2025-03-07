//
//  Preferences.swift
//  Root3 Support
//
//  Created by Jordy Witteman on 31/07/2020.
//

import Foundation
import SwiftUI

// Class to publish preference updates from variables to ContentView
class Preferences: ObservableObject {
    
    // Where possible we use the @AppStorage property wrapper which uses UserDefaults to get and store preferences.
    // The benefit of @AppStorage is that value changes are automatically observed by SwiftUI and updates the view
    // without manually asking UserDefault for new data. Other preferences are handled elsewhere.
    
    // MARK: - General
    
    // Title shown in the top of the app
    @AppStorage("Title") var title: String = "Support"
    
    // Custom color for all symbols
    @AppStorage("CustomColor") var customColor: String = ""
    
    // Custom color for all symbols for Dark Mode
    @AppStorage("CustomColorDarkMode") var customColorDarkMode: String = ""
    
    // Custom error message
    @AppStorage("ErrorMessage") var errorMessage: String = NSLocalizedString("Please contact IT support", comment: "")
    
    // Show optional welcome screen
    @AppStorage("ShowWelcomeScreen") var showWelcomeScreen = false
    
    // Hide Quit Button. Set to FALSE by default in MAS version. Set to TRUE by default in Non-MAS version
    @AppStorage("HideQuit") var hideQuit: Bool = true
    
    // Text shown at the bottom as footnote
    @AppStorage("FooterText") var footerText = ""
    
    // Automatically register modern LaunchAgent on macOS 13 and higher
    @AppStorage("OpenAtLogin") var openAtLogin: Bool = false
    
    // MARK: - Info items
    
    // Version 2.2 new preferences for modular info items
    @AppStorage("InfoItemOne") var infoItemOne: String = "ComputerName"
    @AppStorage("InfoItemTwo") var infoItemTwo: String = "MacOSVersion"
    @AppStorage("InfoItemThree") var infoItemThree: String = "Uptime"
    @AppStorage("InfoItemFour") var infoItemFour: String = "Storage"
    @AppStorage("InfoItemFive") var infoItemFive: String = ""
    @AppStorage("InfoItemSix") var infoItemSix: String = ""
    
    // Days of uptime after which a notification badge is shown, disabled by default
    @AppStorage("UptimeDaysLimit") var uptimeDaysLimit: Int = 0
    
    // Days until password expiry shows a notification badge is shown, disabled by default
    @AppStorage("PasswordExpiryLimit") var passwordExpiryLimit: Int = 0
    
    // Text to show in Password info item
    @AppStorage("PasswordLabel") var passwordLabel: String = "Mac " + NSLocalizedString("Password", comment: "")
    
    // Password type
    @AppStorage("PasswordType") var passwordType: String = "Apple"
    
    // Kerberos realm when used with Kerberos SSO Extension
    @AppStorage("KerberosRealm") var kerberosRealm: String = ""
    
    // Percentage of storage used after which a notification badge is shown, disabled by default
    @AppStorage("StorageLimit") var storageLimit: Int = 0
    
    // MARK: - Support App Extensions
    @AppStorage("ExtensionTitleA") var extensionTitleA: String = ""
    @AppStorage("ExtensionSymbolA") var extensionSymbolA: String = ""
    @AppStorage("ExtensionTypeA") var extensionTypeA: String = "App"
    @AppStorage(extensionLinkAKey) var extensionLinkA: String = ""

    @AppStorage("ExtensionTitleB") var extensionTitleB: String = ""
    @AppStorage("ExtensionSymbolB") var extensionSymbolB: String = ""
    @AppStorage("ExtensionTypeB") var extensionTypeB: String = "App"
    @AppStorage(extensionLinkBKey) var extensionLinkB: String = ""
    
    // MARK: - First row of configurable buttons
    
    // UserDefaults for button left (3rd row) with default values
    @AppStorage("FirstRowTitleLeft") var firstRowTitleLeft: String = "Remote Support"
    @AppStorage("FirstRowSubtitleLeft") var firstRowSubtitleLeft: String = ""
    @AppStorage("FirstRowTypeLeft") var firstRowTypeLeft: String = "App"
    @AppStorage(firstRowLinkLeftKey) var firstRowLinkLeft: String = "com.apple.ScreenSharing"
    @AppStorage("FirstRowSymbolLeft") var firstRowSymbolLeft: String = "cursorarrow"
    
    // UserDefaults for optional button middle (3th row)
    @AppStorage("FirstRowTitleMiddle") var firstRowTitleMiddle: String = ""
    @AppStorage("FirstRowSubtitleMiddle") var firstRowSubtitleMiddle: String = ""
    @AppStorage("FirstRowTypeMiddle") var firstRowTypeMiddle: String = "URL"
    @AppStorage(firstRowLinkMiddleKey) var firstRowLinkMiddle: String = ""
    @AppStorage("FirstRowSymbolMiddle") var firstRowSymbolMiddle: String = ""

    // UserDefaults for button right (3rd row) with default values
    @AppStorage("FirstRowTitleRight") var firstRowTitleRight: String = "Company Store"
    @AppStorage("FirstRowSubtitleRight") var firstRowSubtitleRight: String = ""
    @AppStorage("FirstRowTypeRight") var firstRowTypeRight: String = "App"
    @AppStorage(firstRowLinkRightKey) var firstRowLinkRight: String = "com.apple.AppStore"
    @AppStorage("FirstRowSymbolRight") var firstRowSymbolRight: String = "cart.fill"
    
    // MARK: - Second row of configurable buttons
    
    // UserDefaults for button left (4th row) with default values
    @AppStorage("SecondRowTitleLeft") var secondRowTitleLeft: String = "Support Ticket"
    @AppStorage("SecondRowSubtitleLeft") var secondRowSubtitleLeft: String = ""
    @AppStorage("SecondRowTypeLeft") var secondRowTypeLeft: String = "URL"
    @AppStorage(secondRowLinkLeftKey) var secondRowLinkLeft: String = "https://yourticketsystem.tld"
    @AppStorage("SecondRowSymbolLeft") var secondRowSymbolLeft: String = "ticket"
    
    // UserDefaults for optional button middle (4th row) with default values
    @AppStorage("SecondRowTitleMiddle") var secondRowTitleMiddle: String = ""
    @AppStorage("SecondRowSubtitleMiddle") var secondRowSubtitleMiddle: String = ""
    @AppStorage("SecondRowTypeMiddle") var secondRowTypeMiddle: String = "URL"
    @AppStorage(secondRowLinkMiddleKey) var secondRowLinkMiddle: String = ""
    @AppStorage("SecondRowSymbolMiddle") var secondRowSymbolMiddle: String = ""
    
    // UserDefaults for button right (4th row) with default values
    @AppStorage("SecondRowTitleRight") var secondRowTitleRight: String = "Phone"
    @AppStorage("SecondRowSubtitleRight") var secondRowSubtitleRight: String = ""
    @AppStorage("SecondRowTypeRight") var secondRowTypeRight: String = "URL"
    @AppStorage(secondRowLinkRightKey) var secondRowLinkRight: String = "tel:+31000000000"
    @AppStorage("SecondRowSymbolRight") var secondRowSymbolRight: String = "phone"
     
    
    // MARK: - Preference Key Names
    static let firstRowLinkLeftKey = "FirstRowLinkLeft"
    static let firstRowLinkMiddleKey = "FirstRowLinkMiddle"
    static let firstRowLinkRightKey = "FirstRowLinkRight"
    static let secondRowLinkLeftKey = "SecondRowLinkLeft"
    static let secondRowLinkMiddleKey = "SecondRowLinkMiddle"
    static let secondRowLinkRightKey = "SecondRowLinkRight"
    static let extensionLinkAKey = "ExtensionLinkA"
    static let extensionLinkBKey = "ExtensionLinkB"
    
    // MARK: - Non MDM preferences
    // These preferences are not meant to be managed by MDM but instead handled locally
    
    // Boolean to hide the welcome screen after the first time
    @AppStorage("HasSeenWelcomeScreen") var hasSeenWelcomeScreen = false
    
    // Booleans to integrate with scripts/commands and show ProgressView while active
    @AppStorage("FirstRowLoadingLeft") var firstRowLoadingLeft = Bool()
    @AppStorage("FirstRowLoadingMiddle") var firstRowLoadingMiddle = Bool()
    @AppStorage("FirstRowLoadingRight") var firstRowLoadingRight = Bool()
    @AppStorage("SecondRowLoadingLeft") var secondRowLoadingLeft = Bool()
    @AppStorage("SecondRowLoadingMiddle") var secondRowLoadingMiddle = Bool()
    @AppStorage("SecondRowLoadingRight") var secondRowLoadingRight = Bool()
    
    // Custom Item A value and loading effect booleans. Set to "KeyPlaceholder" to default to enable placeholder view
    @AppStorage("ExtensionValueA") var extensionValueA: String = "KeyPlaceholder"
    @AppStorage("ExtensionLoadingA") var extensionLoadingA = Bool()
    
    // Custom Item B value and loading effect booleans. Set to "KeyPlaceholder" to default to enable placeholder view
    @AppStorage("ExtensionValueB") var extensionValueB: String = "KeyPlaceholder"
    @AppStorage("ExtensionLoadingB") var extensionLoadingB = Bool()
    
    // Enable beta release watermark
    let betaRelease: Bool = false
}
