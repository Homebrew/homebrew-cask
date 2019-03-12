cask 'wondershare-video-converter-ultimate' do
  version '10.3.2.6,735'
  sha256 '827eafa4a095f5f2728d199f4c53fd184f3c7d3219ec0c803e97190239bc5570'

  url "http://download.wondershare.com/cbs_down/video-converter-ultimate-mac_full#{version.after_comma}.dmg"
  name 'Wondershare Video Converter Ultimate'
  homepage 'https://videoconverter.wondershare.com/'

  app 'Wondershare Video Converter Ultimate.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.wondershare.video-converter-ultimate.sfl*',
               '~/Library/Caches/com.Wondershare.Video-Converter-Ultimate',
               '~/Library/Caches/com.wondershare.helper_compact',
               '~/Library/Cookies/com.Wondershare.Video-Converter-Ultimate.binarycookies',
               '~/Library/Preferences/com.Wondershare.Video-Converter-Ultimate.plist',
               '~/Library/Preferences/com.wondershare.helper_compact',
             ]
end
