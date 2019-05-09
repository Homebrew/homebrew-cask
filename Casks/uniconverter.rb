cask 'uniconverter' do
  version '11.0.0.12,735'
  sha256 '46db11a26c78b82b3c8e48c7e5ad7a013c2e7e0a9c4e0011db08f1394940f50e'

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
