# SwiftUI_ImageCropper
## Introduction
This is a cropper of images using SwiftUI. So you can customize the cropper easily and crop image in iOS/iPadOS or macOS.

I make a demo in iOS/iPadOS to help you know how it works. 
It will show an image I inputted in advance. Then you can crop it in your mind, and touch the "􀍳". The cropped image will show!
It works like below:
![Demo](/images/1.gif)

You can follow the Usage to take SwiftUI_ImageCropper into your app or project! Enjoy it!

## Usage
### Step 1
Copy or drag "CropperView" and "CropImage" to your project. (The package coming soon.)
![Files' name](/images/2.jpeg)

### Step 2
Then you can use following code to call it in any View:
```
                CropperView(inputImage: UIImage, croppedImage: Binding<UIImage>, cropBorderColor: Color?, cropVerticesColor: Color, cropperOutsideOpacity: Double)
```

There are some parameters for you to customize or use the cropper(If you want more, please "issue" me):

| Parameter             | Type             | Default            | Description |
| -----------           | -----------      | -----------        | ----------- | 
| inputImage            | UIImage          | You must assign it | Image you want to be cropped |
| croppedImage          | Binding<UIImage> | You must assign it | The cropped image(it need you create a UIImage first), you can show or save it |
| cropBorderColor       | Color?           | Color.white        | As name said, it control the color of border of cropper |
| cropVerticesColor     | Color            | Color.pink         | As name said, it control the color of Vertices of cropper |
| cropperOutsideOpacity | Double           | 0.4                | The opacity of dark mask out of cropper |

There are some demoes to show the changes in order (Defult vs Changed).

*cropBorderColor: Defult vs Color.yellow*
![cropBorderColor](/images/3.jpg)

*cropVerticesColor: Defult vs Color.yellow*
![cropVerticesColor](/images/4.jpg)

*cropperOutsideOpacity: Defult vs Color.yellow*
![cropperOutsideOpacity](/images/5.jpg)

## Notices

If you check the source code, you will find some issues "Invalid frame dimension (negative or non-finite)."
Rest assured, they will not affect the operation.

