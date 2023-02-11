//
//  ContentView.swift
//  ImageCropper
//
//  Created by 钟宜江 on 2022/1/20.
//

import SwiftUI

struct ContentView: View {
    var inputimage = UIImage(named: "image")!
    @State private var croppedImage: UIImage = UIImage()
    @State private var showCropper = false
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                ZStack {
                    // This will navigate into cropper view
                    NavigationLink(destination: CropperView(inputImage: inputimage, croppedImage: $croppedImage),isActive: $showCropper) { EmptyView() }
                    
                    VStack {
                        VStack(alignment: .leading) {
                            Text("Origin Image")
                                .font(.title)
                            HStack {
                                Image(uiImage: inputimage)
                                    .resizable()
                                    .scaledToFit()
                            }
                            
                            
                            Text("Cropped Image")
                                .font(.title)
                            HStack {
                                Image(uiImage: croppedImage)
                                    .resizable()
                                    .scaledToFit()
                                .frame(width: screenWidth * 0.6, height: screenHeight/5)
                            }
                        }
                        Button (action : {
                            showCropper = true
                        }) {
                            Text("Crop")
                                .padding(.all, 10)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .shadow(color: .gray, radius: 1)
                                .padding(.top, 50)
                        }
                    }
                }
                .padding()
            }
        } else {
            // Fallback on earlier versions
            NavigationView {
                ZStack {
                    // This will navigate into cropper view
                    NavigationLink(destination: CropperView(inputImage: inputimage, croppedImage: $croppedImage),isActive: $showCropper) { EmptyView() }
                    
                    VStack {
                        Text("Origin Image")
                        Image(uiImage: inputimage)
                            .resizable()
                            .scaledToFit()
                        
                        Text("Cropped Image")
                        Image(uiImage: croppedImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: screenWidth * 0.6, height: screenHeight/5)
                        
                        HStack {
                            Button (action : {
                                showCropper = true
                            }) {
                                Text("Crop")
                                    .padding(.all, 10)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .shadow(color: .gray, radius: 1)
                                    .padding(.top, 50)
                            }
                        }
                    }
                }
                .padding()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
