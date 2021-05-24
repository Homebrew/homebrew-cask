cask "tizen-studio" do
  version "4.1"
  sha256 :no_check

  url "https://download.tizen.org/sdk/Installer/tizen-studio_4.1/web-ide_Tizen_Studio_4.1_macos-64.dmg"

  name "Framer"
  desc "Tizen Studio is the official IDE for developing web and native applications for Tizen"
  homepage "https://developer.tizen.org/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Tizen Studio.app"
end
