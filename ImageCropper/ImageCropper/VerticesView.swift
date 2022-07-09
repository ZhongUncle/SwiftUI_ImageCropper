//
//  VerticesView.swift
//  ImageCropper
//
//  Created by 钟宜江 on 2022/7/7.
//

import SwiftUI

//左上角 Top-Leading
struct ZSVertices: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 19, height: 3)
                .offset(x: 7, y: -1)
            Rectangle()
                .frame(width: 3, height: 19)
                .offset(x: -1, y: 7)
        }
    }
}

//左下角 Bottom-Leading
struct ZXVertices: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 19, height: 3)
                .offset(x: 7, y: 1)
            Rectangle()
                .frame(width: 3, height: 19)
                .offset(x: -1, y: -7)
        }
    }
}

//右下角 Bottom-Trailing
struct YXVertices: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 19, height: 3)
                .offset(x: -7, y: 1)
            Rectangle()
                .frame(width: 3, height: 19)
                .offset(x: 1, y: -7)
        }
    }
}

//右上角
struct YSVertices: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 19, height: 3)
                .offset(x: 7, y: -1)
            Rectangle()
                .frame(width: 3, height: 19)
                .offset(x: 1, y: -7)
        }
    }
}




