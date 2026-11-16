cask "xkey" do
  version "1.2.28,20261116"
  sha256 "d8e221538c229483be30005fd7791f1ef9cff085e8058d90287ef70fbb7f2e9b"

  url "https://github.com/xmannv/xkey/releases/download/v#{version.csv.first}-#{version.csv.second}/XKey.dmg"
  name "XKey"
  desc "Vietnamese input method engine"
  homepage "https://github.com/xmannv/xkey/"

  livecheck do
    url "https://xmannv.github.io/xkey/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "XKey.app"

  uninstall quit: "com.codetay.XKey"

  zap trash: [
    "~/Library/Application Scripts/7E6Z9B4F2H.com.codetay.inputmethod.XKey",
    "~/Library/Application Support/XKey",
    "~/Library/Group Containers/7E6Z9B4F2H.com.codetay.inputmethod.XKey",
    "~/Library/Preferences/com.codetay.XKey.plist",
  ]
end
