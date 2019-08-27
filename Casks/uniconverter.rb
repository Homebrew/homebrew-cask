cask 'uniconverter' do
  version '11.1.3.1,735'
  sha256 '85f649c30a19b2e63e69731cd99d937b1be36558e60b061edf802f43ac1e75fd'

  url "http://download.wondershare.com/cbs_down/video-converter-ultimate-mac_full#{version.after_comma}.dmg"
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
