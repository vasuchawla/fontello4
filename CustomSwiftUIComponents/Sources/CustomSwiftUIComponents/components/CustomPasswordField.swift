//
//  CustomPasswordField.swift
//  
//
//  Created by meenakshi.madan on 06/04/25.
//


import SwiftUI
@available(iOS 13.0, *)
public struct CustomPasswordField: View {
    @Binding var text: String
    @State private var isVisible: Bool = false

    public init(text: Binding<String>) {
        self._text = text
    }

    public var body: some View {
        HStack {
            Group {
                if isVisible {
                    TextField("Password", text: $text)
                } else {
                    SecureField("Password", text: $text)
                }
            }
            .autocapitalization(.none)

            Button(action: { isVisible.toggle() }) {
                Image(systemName: isVisible ? "eye.slash" : "eye")
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .overlay(
            RoundedRectangle(cornerRadius: 6)
                .stroke(Color.gray.opacity(0.4), lineWidth: 1)
        )
        .cornerRadius(6)
        .font(UITheme.fontRegular)
    }
}
