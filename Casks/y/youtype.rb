cask "youtype" do
  version "0.7.3"
  sha256 :no_check

  url "https://github.com/freefelt/YouType/raw/main/YouType.zip"
  name "YouType"
  desc "Input method helper"
  homepage "https://github.com/freefelt/YouType"

  livecheck do
    url "https://raw.githubusercontent.com/freefelt/YouType/main/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "YouType.app"

  uninstall quit: "com.AVKorotkov.YouType"

  zap trash: [
    "~/Library/Caches/com.AVKorotkov.YouType",
    "~/Library/Preferences/com.AVKorotkov.YouType.plist",
  ]
end
