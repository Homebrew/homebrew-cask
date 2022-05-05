cask "wondershare-uniconverter" do
  version "12.5.4.17"
  sha256 :no_check

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
