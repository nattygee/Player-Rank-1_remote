//
//  CustomBtnStyles.swift
//  Player Rank 1
//
//  Created by Tim Green on 2023-02-09.
//

import SwiftUI

struct PrimaryBtnStyle: ButtonStyle {
    var bgColor = Color.theme.accentColor
    var fgColor = Color.theme.reversedTextColor
    var cornerRadius: CGFloat = 12.0
    var font: Font = .title3.bold()
    var padding: CGFloat = 8.0
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
                .background(bgColor)
                .foregroundColor(fgColor)
                .cornerRadius(cornerRadius)
                .font(font)
                .fontWeight(.bold)
                .padding(padding)
                .opacity(configuration.isPressed ? 0.8 : 1.0)
    }
}

struct MultiActionBtnStyle: ButtonStyle {
    enum Action {
        case confirm, cancel, delete
        var bgColor: Color {
            switch self {
            case .confirm:
                return Color.theme.accentColor
            case .cancel:
                return Color.theme.backgroundColor
            case .delete:
                return Color.theme.backgroundColor
            }
        }
        var fgColor: Color {
            if self == .confirm {
                return Color.theme.reversedTextColor
            } else {
                return Color.theme.accentColor
            }
        }
        var stroke: Color {
            return Color.theme.accentColor
        }
        var image: Image {
            switch self {
            case .confirm:
                return Image(systemName: "checkmark.rectangle.fill")
            case .cancel:
                return Image(systemName: "clear.fill")
            case .delete:
                return Image(systemName: "trash")
            }
        }
    }
    var actionType: Action
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            actionType.image
            configuration.label
        }
            .padding(8.0)
            .background(
                RoundedRectangle(cornerRadius: 12.0, style: .continuous)
                    .fill(actionType.bgColor)
                    .overlay(RoundedRectangle(cornerRadius: 12.0, style:
                            .continuous)
                            .stroke(actionType.stroke)
                    )
                )
            .foregroundColor(actionType.fgColor)
            .font(Font.bold(.body)())
            .opacity(configuration.isPressed ? 0.8 : 1.0)
    }
}
