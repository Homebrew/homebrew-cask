cask 'wondershare-uniconverter' do
  version '12.0.1.3'
  sha256 '85851279788ca4469bfb609d6800fe76fe6001ff84b02421496aefaca6e00416'

  url 'http://download.wondershare.com/cbs_down/video-converter-ultimate-mac_full735.dmg'
  name 'UniConverter'
  homepage 'https://videoconverter.wondershare.com/'

  app 'Wondershare UniConverter.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.wondershare.video-converter-ultimate.sfl*',
               '~/Library/Caches/com.Wondershare.Video-Converter-Ultimate',
               '~/Library/Caches/com.wondershare.helper_compact',
               '~/Library/Cookies/com.Wondershare.Video-Converter-Ultimate.binarycookies',
               '~/Library/Preferences/com.Wondershare.Video-Converter-Ultimate.plist',
               '~/Library/Preferences/com.wondershare.helper_compact',
             ]
end
