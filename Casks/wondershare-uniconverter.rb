cask "wondershare-uniconverter" do
  version "12.5.0.7"
  sha256 "d1790811cc372831ab84b05091eaefe2df6d927fab4dedc979e31c3abfa5f228"

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
