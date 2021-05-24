cask "tizen-studio" do
  version "4.1"
  sha256 "c538328806b14cec190591213465d813a180bcbd"
  url "https://download.tizen.org/sdk/Installer/tizen-studio_#{version.major_minor}/web-ide_Tizen_Studio_#{version.major_minor}_macos-64.dmg"

  name "Tizen Studio"
  desc "Official IDE for developing web and native applications for Tizen"
  homepage "https://developer.tizen.org/"

  livecheck do
    url "https://download.tizen.org/sdk/Installer"
    regex(%r{href=.*?/tizen-studio[._-]?(\d+(?:\.\d+)+)/web-ide_Tizen_Studio[._-]?(\d+(?:\.\d+)+)_macos-64\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Tizen Studio.app"

  zap trash: [
    "~/tizen-studio",
    "~/Applications/tizen-studio",
    "~/Library/Preferences/org.tizen.sdk.ide.plist",
    "~/Library/Saved Application State/org.tizen.sdk.ide.savedState",
  ]
end
