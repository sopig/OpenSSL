Pod::Spec.new do |s|
  s.name         = "OpenSSL"
  s.version      = "0.0.1"
  s.summary      = "OpenSSL framework的封装"
  s.description  = <<-DESC
                   如何使用，请参见sopig.cc
                   DESC

  s.homepage     = "http://gitlab.9ijx.com/iOS/OpenSSL.git"
  
  s.license      = "MIT"
  
  s.author             = { "张正超" => "chay0103@163.com" }

  s.requires_arc = true
  s.platform     = :ios, "7.0"

  s.source       = { :git => "http://TEST-5-126.9ijx.com/iOS/OpenSSL.git" }

  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'core/*.{h,m,c}'
  end

  s.subspec 'Lib' do |lib|
    lib.source_files = 'lib/*.{a}'
  end

  s.vendored_libraries = 'lib/libcrypto.a','lib/libssl.a'
  #s.resource = 'Classes/**/*.plist','Classes/**/*.pem'


  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

 


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  # s.source_files  = "Classes/**/*.{h,m}","Classes/*.{h,m}"

  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  
  # s.resource  = "Classes/**/*.plist","Classes/**/*.pem"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "PGAppconfig", :git => "https://github.com/sopig/PGAppconfig.git"
 
end
