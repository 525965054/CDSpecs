#
#  Be sure to run `pod spec lint PodCool.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "PodCool"
  s.version      = "3.0.0"
  s.summary      = "A short description of PodCool."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
               描述不是空的
                   DESC

  s.homepage     = "http://EXAMPLE/PodCool"

  s.license      = "MIT"
  s.author       = { "tinaleios" => "tianleios@163.com" }


  # s.platform     = :ios
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = "9.0"


  #http://blog.csdn.net/meegomeego/article/details/24477387 本地包管理
  s.source       = { :git => "https://github.com/tianleios/PodCool.git", :tag => s.version.to_s }

 #本地代码,.git的根目录
 #s.source       =  {:git => "/Users/tianlei/Desktop/PodTest"}
 
 #远端地址
 #s.source      =  {:git => "https://github.com/tianleios/PodCool.git"}

 s.source_files  = "PodTest/PodCool", "PodTest/PodCool/**/*.{h,m}"
  #s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #



   s.framework  = "Foundation"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  s.dependency 'AFNetworking','3.1'

  s.subspec 'OtherPodCool' do |ss|
    ss.source_files = "PodTest/OtherPodCool/**/*.{h,m}"
    ss.frameworks = 'Foundation'
  end

end
