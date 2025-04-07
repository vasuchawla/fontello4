//
//  CustomTextField.swift
//  
//
//  Created by meenakshi.madan on 06/04/25.
//


import SwiftUI
@available(iOS 13.0, *)
public struct CustomTextField: View {
    @Binding var text: String
    public let placeholder: String
    public let isSecure: Bool
    public let keyboardType: UIKeyboardType
    public let variant: TextFieldVariant

    public init(
        text: Binding<String>,
        placeholder: String = "",
        isSecure: Bool = false,
        keyboardType: UIKeyboardType = .default,
        variant: TextFieldVariant = .outlined
    ) {
        self._text = text
        self.placeholder = placeholder
        self.isSecure = isSecure
        self.keyboardType = keyboardType
        self.variant = variant
    }

    public var body: some View {
        Group {
            if isSecure {
                SecureField(placeholder, text: $text)
            } else {
                TextField(placeholder, text: $text)
                    .keyboardType(keyboardType)
            }
        }
        .padding()
        .background(variant.backgroundColor)
        .overlay(
            RoundedRectangle(cornerRadius: 6)
                .stroke(variant.borderColor, lineWidth: 1)
        )
        .cornerRadius(6)
        .font(UITheme.fontRegular)
    }
}
