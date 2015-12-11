Pod::Spec.new do |s|
  s.name         = "FFmpeg"
  s.version      = "2.8.3"
  s.summary      = "FFmpeg static libraries compiled for iOS"
  s.homepage     = "https://github.com/twinenginelabs/FFmpeg-iOS"
  
  s.license      = { :type => 'LGPLv2.1+', :file => 'COPYING.LGPLv2.1' }
  s.author       = { "Chris Ballinger" => "chris@chatsecure.org" } # Podspec maintainer
  s.requires_arc = false
  
  s.platform     = :ios

  s.source       = { :git => "https://github.com/twinenginelabs/FFmpeg-iOS.git", :tag => "2.8.3", :submodules => true }

  s.default_subspec = 'precompiled'

  s.subspec 'precompiled' do |ss|
    ss.source_files        = 'ffmpeg-ios-static-libs/include/**/*.h'
    ss.public_header_files = 'ffmpeg-ios-static-libs/include/**/*.h'
    ss.header_mappings_dir = 'ffmpeg-ios-static-libs/include'
    ss.vendored_libraries  = 'ffmpeg-ios-static-libs/lib/*.dylib'
    ss.libraries = 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2'
  end

end
