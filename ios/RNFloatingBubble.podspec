Pod::Spec.new do |s|
  s.name         = "RNFloatingBubble"
  s.version      = "1.0.1"
  s.summary      = "React Native Floating Bubble - Chat head style floating bubbles for Android"
  s.description  = <<-DESC
                  A React Native library for creating floating bubbles (chat heads) on Android. 
                  Provides an easy-to-use API for displaying floating overlay bubbles that can be 
                  moved around the screen and respond to user interactions.
                   DESC
  s.homepage     = "https://github.com/pranavOptym/react-native-floating-bubble"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = { "Pranav Baradkar" => "pranav.baradkar@optym.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/pranavOptym/react-native-floating-bubble.git", :tag => "v#{s.version}" }
  s.source_files = "RNFloatingBubble/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React-Core"
  #s.dependency "others"

end

