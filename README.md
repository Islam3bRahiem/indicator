# ImageIndicator
Use an image as indicator

#### ImageIndicator is a Swift extension that user a specific image as indicator for application

## Preview
https://user-images.githubusercontent.com/37911123/121207196-61107a80-c879-11eb-8032-30e1e90577eb.mov


## Basic Examples
1- Add Image Indicator folder inside your project 
2- inside UIImage extension change image_name with your specific name 
```swift
class var indicatorImg: UIImage {
   return UIImage(named: "image_name")!
}
```
3- inside UIColor extension change hex code with your hex color 
```swift
class var indicatorColor: UIColor {
    return self.hexStringToUIColor(hex: "#035E9E")
}
```
4- init indicator image in didFinishLaunchingWithOptions in AppDelegate 
Use a default image without a color, use 
```swift
myIndicatorImg = UIImage.indicatorImg
```
Use custom color for indicator image, use 
```swift
myIndicatorImg = UIImage.indicatorImg.withColor(.indicatorColor)
```
