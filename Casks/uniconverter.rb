cask 'uniconverter' do
  version '12.0.0.28'
  sha256 '9e5769f4d83eaf5ee664da6aa1b0af9c104a9675f6495dc5f0b94db04b536479'

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
