cask "wondershare-uniconverter" do
  version "12.0.4.7"
  sha256 "f509d605bfc3467270a6010bfae7c16392351e4f29c01a0d14c637cdcd76b1e3"

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
