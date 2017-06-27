Pod::Spec.new do |s|
  s.name         = "AORangeSlider"
  s.version      = "1.0.0"
  s.summary      = "Custom UISlider with two handlers to pick a minimum and maximum range."
  s.description  = <<-DESC
  Custom UISlider with two handlers to pick a minimum and maximum range. You can custom your thumb image, background bar height, color, image. You can also set the minimum stepValue of each movement, minimumDistance.
                   DESC
  s.homepage     = "https://github.com/Andy1984/AORangeSlider"
  s.screenshots  = "https://raw.githubusercontent.com/Andy1984/RangeSlider/master/Screenshot.gif"
  s.license      = 'MIT'
  s.author             = { "Andy1984" => "445919439@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/Andy1984/AORangeSlider.git", :tag => s.version }
  s.source_files  = "AORangeSlider/AORangeSlider.swift"  
  s.requires_arc = true
end
