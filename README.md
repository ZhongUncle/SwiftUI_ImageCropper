# SwiftUI_ImageCropper
## Introduction
This is a cropper of images using SwiftUI. So you can customize the cropper easily and crop image in iOS/iPadOS even in macOS.

I make a demo in iOS/iPadOS to help you know how it works, and it also shows the size of image in pixel. 
It will show an image I inputted in advance. Then you can crop it in your mind, and touch the symbol "crop". The cropped image will show!
It works like below in iPhone and iPad:

iPhone：



https://user-images.githubusercontent.com/78771985/203647476-c56e0f02-f3d9-44bf-9deb-d246beab2e93.mp4



iPad：



https://user-images.githubusercontent.com/78771985/203647458-cb9dd24e-d026-433d-999d-b2a89eb46a0a.mov




You can follow the Usage to take SwiftUI_ImageCropper into your app or project! Enjoy it!

## Usage
### Step 1
Copy or drag "CropperView" and "CropImage" to your project. (The package is developping, coming soon)

![Files' name](https://user-images.githubusercontent.com/78771985/178088277-ff7e71a1-dd88-4a14-b387-818b0712f59f.jpeg)

### Step 2
Then you can use following code to call it in any View:
```
CropperView(inputImage: UIImage, croppedImage: Binding<UIImage>, cropBorderColor: Color?, cropVerticesColor: Color, cropperOutsideOpacity: Double)
```

There are some parameters for you to customize or use the cropper(**If you want more, please "issue" me**):

| Parameter             | Type             | Default            | Description |
| -----------           | -----------      | -----------        | ----------- | 
| inputImage            | UIImage          | You must assign it | Image you want to be cropped |
| croppedImage          | Binding<UIImage> | You must assign it | The cropped image(it need you create a UIImage first), you can show or save it |
| cropBorderColor       | Color?           | Color.white        | As name said, it control the color of border of cropper |
| cropVerticesColor     | Color            | Color.pink         | As name said, it control the color of Vertices of cropper |
| cropperOutsideOpacity | Double           | 0.4                | The opacity of dark mask out of cropper |

There are some demoes to show the changes in order (Defult vs Changed).

*cropBorderColor: Defult vs Color.yellow*
![cropBorderColor](https://user-images.githubusercontent.com/78771985/178088422-c64ef29c-05d9-439f-bc4a-33e1f322a0ab.jpg)

*cropVerticesColor: Defult vs Color.yellow*
![cropVerticesColor](https://user-images.githubusercontent.com/78771985/178088425-4b0f76b0-0b5a-466d-b4c8-a863259e80a6.jpg)

*cropperOutsideOpacity: Defult vs 0.8*
![cropperOutsideOpacity](https://user-images.githubusercontent.com/78771985/178088742-788303ae-bc66-480e-95e2-0ca31c280152.jpg)

  
## Notices

If you check the source code, you will find some issues "Invalid frame dimension (negative or non-finite)."
Rest assured, they will not affect the operation.

