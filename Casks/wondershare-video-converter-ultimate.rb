cask 'wondershare-video-converter-ultimate' do
  version '5.7.2,735'
  sha256 '7b1bb5338e29181348724a265e1e65010c8acbc60fd292569303699d6eda72a1'

  url "http://download.wondershare.com/cbs_down/video-converter-ultimate-mac_full#{version.after_comma}.dmg"
  name 'Wondershare Video Converter Ultimate'
  homepage 'https://videoconverter.wondershare.com/video-converter-ultimate-mac.html'

  app 'Wondershare Video Converter Ultimate.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.wondershare.video-converter-ultimate.sfl',
                '~/Library/Caches/com.Wondershare.Video-Converter-Ultimate',
                '~/Library/Caches/com.wondershare.helper_compact',
                '~/Library/Cookies/com.Wondershare.Video-Converter-Ultimate.binarycookies',
                '~/Library/Preferences/com.Wondershare.Video-Converter-Ultimate.plist',
                '~/Library/Preferences/com.wondershare.helper_compact',
              ]
end
