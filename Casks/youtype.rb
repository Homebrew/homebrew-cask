cask "youtype" do
  version "0.7.3"
  sha256 :no_check

  url "https://github.com/freefelt/YouType/raw/main/Installer.sh"
  name "YouType"
  desc "Input method helper"
  homepage "https://github.com/freefelt/YouType"

  livecheck do
    url "https://github.com/freefelt/YouType/raw/main/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "YouType.app"
  installer script: "#{staged_path}/Installer.sh"

  uninstall quit: "com.AVKorotkov.YouType"

  zap trash: [
    "~/Library/Caches/com.AVKorotkov.YouType",
    "~/Library/Preferences/com.AVKorotkov.YouType.plist",
  ]
end
