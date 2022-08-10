Pod::Spec.new do |s|
  s.name         = "Sliders"
  s.version      = "0.0.2"
  s.summary      = "Custom Sliders"
  s.homepage     = "https://github.com/shaokui-gu/swiftui-sliders"
  s.license      = 'MIT'
  s.author       = { 'gushaokui' => 'gushaoakui@126.com' }
  s.source       = { :git => "https://github.com/shaokui-gu/swiftui-sliders.git" }
  s.subspec 'Base' do |base|
      base.source_files = 'Sources/Sliders/Base/*.swift'
  end
  s.subspec 'PointSlider' do |point|
      point.source_files = 'Sources/Sliders/PointSlider/*.swift'
  end
  s.subspec 'RangeSlider' do |range|
      range.source_files = 'Sources/Sliders/RangeSlider/*.swift'
  end
  s.subspec 'ValueSlider' do |value|
      value.source_files = 'Sources/Sliders/ValueSlider/*.swift'
  end
  s.swift_versions = ['5.2', '5.3', '5.4', '5.5', '5.6']
  s.requires_arc = true
end
