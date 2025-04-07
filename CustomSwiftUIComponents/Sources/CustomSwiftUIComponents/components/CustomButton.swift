//
//  CustomButton.swift
//  
//
//  Created by meenakshi.madan on 06/04/25.
//


import SwiftUI

@available(iOS 13.0, *)
public struct CustomButton: View {
    public let title: String
    public let variant: ButtonVariant
    public let isDisabled: Bool
    public let action: () -> Void

    public init(
        title: String,
        variant: ButtonVariant = .primary,
        isDisabled: Bool = false,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.variant = variant
        self.isDisabled = isDisabled
        self.action = action
    }

    @available(iOS 13.0, *)
    public var body: some View {
        Button(action: action) {
            Text(title)
                .font(UITheme.fontBold)
                .padding()
                .frame(maxWidth: .infinity)
                .background(backgroundColor)
                .foregroundColor(variant.textColor)
                .cornerRadius(8)
        }
        .disabled(isDisabled)
    }
    private var backgroundColor: Color {
        switch variant {
        case .primary:
            return isDisabled ? .gray : UITheme.primaryColor
        case .secondary:
            return isDisabled ? .gray : UITheme.secondaryColor
        case .success:
            return isDisabled ? .gray : UITheme.successColor
        case .danger:
            return isDisabled ? .gray : UITheme.errorColor
        case .warning:
            return isDisabled ? .gray : UITheme.warningColor
        case .info:
            return isDisabled ? .gray : UITheme.infoColor
        }
    }
}
