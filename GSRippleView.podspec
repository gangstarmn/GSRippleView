 Pod::Spec.new do |s|
  s.name         = "GSRippleView"
  s.version      = "0.0.1"
  s.summary      = "GSRippleView is a RippleView"
  s.description  = <<-DESC
                    It's looks like android RippleView on UIView.
                   DESC
  s.homepage     = "https://github.com/gangstarmn/GSRippleView"
  s.license      = "MIT"
  s.author             = { "Gantulga" => "gangstarmn@gmail.com" }
  s.platform = :ios, '8.0'
  s.source = { :git => 'https://github.com/gangstarmn/GSRippleView.git', :tag => "#{s.version}" }
  
  s.source_files = "GSRippleView/*.{h,m}"
    
  s.framework = 'UIKit'
  s.requires_arc = true

  s.dependency 'MaterialControls'

  end