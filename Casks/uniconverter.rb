cask 'uniconverter' do
  version '11.0.1.8,735'
  sha256 'c3eeade85b23aa49d6b9953cefa2446e2688c12d5aa4c3fa261313a4ccf5c2b7'

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
