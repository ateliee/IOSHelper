Pod::Spec.new do |s|
  s.name         = 'IOSHelper'
  s.version      = '1.0.2'
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
  s.source       = { :git => 'https://github.com/ateliee/IOSHelper.git', :tag => '1.0.2' }
  s.source_files  = 'Classes', 'IOSHelper/*.{h,m}'
  s.requires_arc  = true
end
