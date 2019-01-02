cask 'wondershare-video-converter-ultimate' do
  version '10.3.0.11,735'
  sha256 '0eb8123a3004e2376bb2db913bd1f808acbfd6d2413cd6c93535c9d066882fa9'

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
