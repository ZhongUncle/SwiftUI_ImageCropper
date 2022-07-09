//
//  TestView.swift
//  ImageCropper
//
//  Created by 钟宜江 on 2022/7/7.
//

import SwiftUI

struct LConnerView: Shape {
    var startPointX: CGFloat
    var startPointY: CGFloat
    func path(in rect: CGRect) -> Path {
        var path=Path()
        path.addLines([CGPoint(x: startPointX + 15, y: startPointY), CGPoint(x: startPointX, y: startPointY), CGPoint(x: startPointX, y: startPointY + 15)])
        return path
    }
}

struct TestView: View {
    @State private var x: CGFloat = 0
    @State private var y: CGFloat = 0
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 16, height: 3)
                .offset(y: -7)
            Rectangle()
                .frame(width: 3, height: 16)
                .offset(x: -7)

        }
        .offset(x: x, y: y)
        .gesture(
            DragGesture()
                .onChanged{ value in
                    x = value.location.x
                    y = value.location.y
                }
        )
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
