//
//  UITheme.swift
//  
//
//  Created by meenakshi.madan on 06/04/25.
//


import SwiftUI
import UIKit


@available(iOS 13.0, *)
public enum UITheme {
    // colors
    public static let primaryColor = Color(hex: "#4745E4") // use from assets or hex
    public static let secondaryColor = Color(hex: "#FC8D74")
    public static let successColor = Color(hex: "#55C960")
    public static let warningColor = Color(hex: "#E9C568")
    public static let errorColor = Color(hex: "#E96868")
    public static let infoColor = Color(hex: "#68ACEB")
    
    public static let fontSizeSmall: CGFloat = 12
    public static let fontSizeRegular: CGFloat = 16
    public static let fontSizeLarge: CGFloat = 24

    public static let fontRegular = Font.system(size: fontSizeRegular)
    public static let fontBold = Font.system(size: fontSizeRegular, weight: .bold)
}

@available(iOS 13.0, *)
public enum ButtonVariant {
    case primary
    case secondary
    case success
    case warning
    case danger
    case info

    public var backgroundColor: Color {
        switch self {
        case .primary: return UITheme.primaryColor
        case .secondary: return UITheme.secondaryColor
        case .success: return UITheme.successColor
        case .warning: return UITheme.warningColor
        case .danger: return UITheme.errorColor
        case .info: return UITheme.infoColor
        }
    }

    public var textColor: Color {
        switch self {
            case .warning: return .black
            case .info: return .black
            default: return .white
        }
    }
}

@available(iOS 13.0, *)
public enum TextFieldVariant {
    case filled
    case outlined
    case error

    var backgroundColor: Color {
        switch self {
        case .filled: return Color(.systemGray6)
        case .outlined, .error: return .clear
        }
    }

    var borderColor: Color {
        switch self {
        case .outlined: return Color.gray.opacity(0.4)
        case .error: return UITheme.errorColor
        case .filled: return .clear
        }
    }
}

@available(iOS 13.0, *)
extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#") // remove #
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double(rgb & 0xFF) / 255.0
        
        self.init(red: r, green: g, blue: b)
    }
}
