cask 'wondershare-video-converter-ultimate' do
  version '5.2.1'
  sha256 'ad1229e4f7aac5d9067ae3ea83d7e2e5dbeb7a6bcce1b049db9ff153b3e494d7'

  url 'http://download.wondershare.com/video-converter-ultimate-mac_full735.dmg'
  name 'Wondershare Video Converter Ultimate'
  homepage 'https://www.wondershare.com/mac-video-converter-ultimate/'

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
