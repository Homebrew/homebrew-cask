cask 'wondershare-video-converter-ultimate' do
  version '5.7.2,735'
  sha256 'a7b9e39bdb7022014a36f10b4257f78c4b52a6636988895cc6caa846d713d617'

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
