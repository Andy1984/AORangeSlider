# AORangeSlider
![Screenshot gif](https://raw.githubusercontent.com/Andy1984/AORangeSlider/master/Screenshot.gif)

`AORangeSlider` is a custom UISlider with two handler to pick a minimum and maximum range.

# Adding `AORangeSlider` to your project
CocoaPods
[CocoaPods](http://cocoapods.org) is the recommended way to add `AORangeSlider` to your project.
Add the following line to your Podfile:

```ruby
pod 'AORangeSlider', '~> 1.0'
```
## Usage
```swift
let rangeSlider = AORangeSlider(frame: frame)
view.addSubView(rangeSlider)
```
<!-- To observe value changes when using gesture
`rangeSlider.addTarget(self, action: #selector(sliderValueChanged(sender:)), for: .valueChanged)`
is enough, but it cannot observe changes when value being changed programmatically. Thus, `valuesChangedHandler` is a better way. -->
If you want to call a method only when touch ends
```swift
rangeSlider.changeValueContinuously = false;
rangeSlider.addTarget(self, action: #selector(sliderValueChanged(sender:)), for: .valueChanged)
```
else if you want to call a method whenever the value changes, no matter by code or by touch,
```swift
rangeSlider.valuesChangedHandler = {
	//write your code here, and pay attention to Circular Reference.
}
```

## Configuration
* `minimumValue` : The minimum possible value of the range
* `maximumValue` : The maximum possible value of the range
* `lowHandleImageNormal`: The image of low thumb
* `highHandleImageNormal`: The image of high thumb
* `lowValue`: set low value programmatically
* `highValue`: set high value programmatically
* `func setValue(low: Double, high: Double, animated: Bool)` set values animated
* `stepValue`: move animatedly to a stepValue when touch ends
* `stepValueContinuously`: If true, the thumb will not move until it hit a new step
