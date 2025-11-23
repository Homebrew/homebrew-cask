cask "ua-midi-control" do
  version "5.12.1"
  sha256 :no_check

  url "https://fonoflow.com/files/ua-midi-control/UA%20Midi%20Control.zip"
  name "UA Midi Control"
  desc "Control-mapping tool for Universal Audio's UAD Console"
  homepage "https://fonoflow.com/products/ua-midi-control"

  livecheck do
    url "https://s3.us-east-005.dream.io/ua-midi-control/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "UA Midi Control.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/raduvarga.ua-midi-control.sfl*",
    "~/Library/Caches/raduvarga.UA-Midi-Control",
    "~/Library/HTTPStorages/raduvarga.UA-Midi-Control",
    "~/Library/HTTPStorages/raduvarga.UA-Midi-Control.binarycookies",
    "~/Library/Preferences/raduvarga.UA-Midi-Control.plist",
    "~/Library/Saved Application State/raduvarga.UA-Midi-Control.savedState",
  ]
end
