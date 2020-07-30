cask "wondershare-uniconverter" do
  version "12.0.2.5"
  sha256 "237a171972e8b6cfa658b53a0291c372bf325f392a7cef9bcdf5ce34d3ad724c"

  url "http://download.wondershare.com/cbs_down/video-converter-ultimate-mac_full735.dmg"
  name "UniConverter"
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
