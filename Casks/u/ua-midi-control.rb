cask "ua-midi-control" do
  version "5.11.2"
  sha256 "49aeaec28a54d363e0d6193c71748daa4ad3edfc0788fc1a5e29e31e80db504c"

  url "https://s3.us-east-005.dream.io/ua-midi-control/builds/UA%20Midi%20Control%20#{version}.zip",
      verified: "dream.io/ua-midi-control/"
  name "UA Midi Control"
  desc "Control-mapping tool for Universal Audio's UAD Console"
  homepage "https://fonoflow.com/products/ua-midi-control"

  livecheck do
    url "https://s3.us-east-005.dream.io/ua-midi-control/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

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
