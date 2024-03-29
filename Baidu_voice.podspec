#
#  Be sure to run `pod spec lint Baidu_voice.podspec' to ensure this is a
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

s.name         = "Baidu_voice"
s.version      = "1.0.0"
s.summary      = "Baidu_voice 离线语音开发SDK"

s.description  = <<-DESC
A longer description of Baidu_voice in Markdown format.

* Think: Why did you write this? What is the focus? What does it do?
* CocoaPods will be using this to generate tags, and improve search results.
* Try to keep it short, snappy and to the point.
* Finally, don't worry about the indent, CocoaPods strips it!
DESC

s.homepage     = "https://github.com/heathcloud/Baidu_Voice_SDK"
# s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


# ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Licensing your code is important. See http://choosealicense.com for more info.
#  CocoaPods will detect a license file if there is a named LICENSE*
#  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
#

s.license      = "MIT"
# s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


# ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Specify the authors of the library, with email addresses. Email addresses
#  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
#  accepts just a name if you'd rather not provide an email address.
#
#  Specify a social_media_url where others can refer to, for example a twitter
#  profile URL.
#

s.author             = { "oujinhua1987" => "oujinhua1987@gmail.com" }
# Or just: s.author    = "oujinhua1987"
# s.authors            = { "oujinhua1987" => "oujinhua1987@gmail.com" }
# s.social_media_url   = "http://twitter.com/oujinhua1987"

# ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  If this Pod runs only on iOS or OS X, then specify the platform and
#  the deployment target. You can optionally include the target after the platform.
#

# s.platform     = :ios
s.platform     = :ios, "7.0"

#  When using multiple platforms
# s.ios.deployment_target = "7.0"
# s.osx.deployment_target = "10.7"



# ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Specify the location from where the source should be retrieved.
#  Supports git, hg, bzr, svn and HTTP.
#

s.source  = { :git => "https://github.com/heathcloud/Baidu_Voice_SDK.git", :tag => "1.0.0" }
#s.source={:path => '/'}

# ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  CocoaPods is smart about how it includes source code. For source files
#  giving a folder will include any swift, h, m, mm, c & cpp files.
#  For header files it will include any header in the folder.
#  Not including the public_header_files will make all headers public.
#

s.source_files  = "Headers/*.h","Third-party/CoreAudioUtility/*","Third-party/TTTAttributedLabel/*"

#s.exclude_files = "Classes/Exclude"

#s.public_header_files ="BaiduVoice/Headers/*"


# ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  A list of resources included with the Pod. These are copied into the
#  target bundle with a build phase script. Anything else will be cleaned.
#  You can preserve files from being cleaned, please don't preserve
#  non-essential files like tests, examples and documentation.
#

# s.resource  = "icon.png"
s.resources = "BDVoiceRecognitionClientResources/*"
s.ios.vendored_library="libBDVoiceRecognitionClient/libBDVoiceRecognitionClient.a"
s.preserve_paths = "libBDVoiceRecognitionClient/libBDVoiceRecognitionClient.a"
s.vendored_libraries = "libBDVoiceRecognitionClient/libBDVoiceRecognitionClient.a"

# ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Link your library with frameworks, or libraries. Libraries do not include
#  the lib prefix of their name.
#

s.framework  = "CoreGraphics","CFNetwork","CoreLocation","OpenGLES","GLKit","CoreText","QuartzCore","Security","Foundation","UIKit","AudioToolbox","SystemConfiguration","AVFoundation"
# s.frameworks = "SomeFramework", "AnotherFramework"

s.library   = "z.1.2.5"
# s.libraries = "iconv", "xml2"


# ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  If your library depends on compiler flags you can set them in the xcconfig hash
#  where they will only apply to your library. If you depend on other Podspecs
#  you can include multiple dependencies to ensure it works.

#s.requires_arc = true

 s.xcconfig = { "LIBRARY_SEARCH_PATHS" => "$(PODS_ROOT)/Baidu_voice/libBDVoiceRecognitionClient" }
# s.dependency "JSONKit", "~> 1.4"

end
