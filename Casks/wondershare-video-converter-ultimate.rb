cask 'wondershare-video-converter-ultimate' do
  version '5.7.2,735'
  sha256 'd8e5d2359d89d53f917d8722d9f9fb3e6c40d1d9fd44431b121d192b0fd404d6'

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
