cask 'uniconverter' do
  version '11.5.0.8'
  sha256 '790be9ac8f39b16e12f74078206b32ea99d4d614697ac793c10b0dcb6df58381'

  url 'http://download.wondershare.com/cbs_down/video-converter-ultimate-mac_full735.dmg'
  name 'UniConverter'
  homepage 'https://videoconverter.wondershare.com/'

  app 'UniConverter.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.wondershare.video-converter-ultimate.sfl*',
               '~/Library/Caches/com.Wondershare.Video-Converter-Ultimate',
               '~/Library/Caches/com.wondershare.helper_compact',
               '~/Library/Cookies/com.Wondershare.Video-Converter-Ultimate.binarycookies',
               '~/Library/Preferences/com.Wondershare.Video-Converter-Ultimate.plist',
               '~/Library/Preferences/com.wondershare.helper_compact',
             ]
end
