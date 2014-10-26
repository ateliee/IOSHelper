<<<<<<< HEAD
Pod::Spec.new do |s|
  s.name         = 'IOSHelper'
  s.version      = '1.0.0'
  s.summary      = 'IOS Basic Class Categorys.'
  s.description  = <<-DESC
                   this classes is Basic Class Categorys.
                   DESC

  s.authors      = {'ateliee' => 'info@ateliee.com'}
  s.homepage     = 'https://github.com/ateliee/IOSHelper'
  s.license      = { :type => 'License, Version 1.0', :text => <<-LICENSE
    Licensed under the License, Version 1.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    https://github.com/ateliee/IOSHelper/blob/master/LICENSE

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }
  s.platform     = :ios, '5.0'
  s.source       = { :git => 'git@github.com:ateliee/IOSHelper.git', :tag => '1.0.0' }
  s.source_files  = 'Classes', '*.{h,m}'
  s.requires_arc  = true
=======

Pod::Spec.new do |s|
  s.name         = "IOSHelper"
  s.version      = "0.1.3"
  s.summary      = "UIView or other Helper."
  s.description  = "IOS UIView or other Helper Category.install and use."
  s.homepage     = "https://github.com/ateliee/IOSHelper"
  s.license = 'MIT'
  s.author = { "ateliee" => "info@ateliee.com" }
  s.platform = :ios, '5.0'
  s.source = { :git => "https://github.com/ateliee/IOSHelper.git", :tag => "0.1.3" }
  s.source_files  = 'IOSHelper', 'IOSHelper/**/*.{h,m}'
  s.framework = 'UIKit', 'CoreGraphics', 'Foundation'
  s.requires_arc = true
>>>>>>> f1ac5ba5caef63fbd9924e3ffd8a8a86deb08c22
end
