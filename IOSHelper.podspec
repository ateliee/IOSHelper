
Pod::Spec.new do |s|
  s.name         = "IOSHelper"
  s.version      = "0.0.1"
  s.summary      = "A short description of IOSHelper."

  s.description  = <<-DESC
                   A longer description of IOSHelper in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/ateliee/IOSHelper"
  s.license      = "MIT"  
  s.author       = { ‘ateliee’ => ‘info@ateliee.com’ }
  s.platform     = :ios, "5.0"
  s.source       = { :git => "git@github.com:ateliee/IOSHelper.git”, :tag => “0.0.2” }

  s.source_files  = "IOSHelper/*.{h,m}"
end
