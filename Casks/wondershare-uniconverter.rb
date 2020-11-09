cask "wondershare-uniconverter" do
  version "12.0.6.7"
  sha256 "93b9c60a1a3230a5533dd89b31ee45c5a7edee6caac1a99c4e7634c010692bbe"

  url "https://download.wondershare.com/cbs_down/video-converter-ultimate-mac_full735.dmg"
  name "UniConverter"
  desc "Video editing software"
  homepage "https://videoconverter.wondershare.com/"

  app "Wondershare UniConverter.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.wondershare.video-converter-ultimate.sfl*",
    "~/Library/Caches/com.Wondershare.Video-Converter-Ultimate",
    "~/Library/Caches/com.wondershare.helper_compact",
    "~/Library/Cookies/com.Wondershare.Video-Converter-Ultimate.binarycookies",
    "~/Library/Preferences/com.Wondershare.Video-Converter-Ultimate.plist",
    "~/Library/Preferences/com.wondershare.helper_compact",
  ]
end
