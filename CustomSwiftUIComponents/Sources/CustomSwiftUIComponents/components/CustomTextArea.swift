//
//  CustomTextArea.swift
//  
//
//  Created by meenakshi.madan on 06/04/25.
//


import SwiftUI

@available(iOS 15.0, *)
public struct CustomTextArea: View {
    @Binding var text: String
    public let placeholder: String

    public init(text: Binding<String>, placeholder: String = "") {
        self._text = text
        self.placeholder = placeholder
    }

    public var body: some View {
        ZStack(alignment: .topLeading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(.gray)
                    .padding(.top, 10)
                    .padding(.leading, 5)
            }

            TextEditor(text: $text)
                .padding(4)
        }
        .frame(minHeight: 100)
        .background(Color(.systemGray6))
        .overlay(
            RoundedRectangle(cornerRadius: 6)
                .stroke(Color.gray.opacity(0.4))
        )
        .cornerRadius(6)
        .font(UITheme.fontRegular)
    }
}
