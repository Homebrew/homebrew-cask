cask "vocaster-hub" do
  version "1.6.0"
  sha256 "108253cabce65bc4cb16650f27af733bbb01981229c5cf22027edf1c93f9945a"

  url "https://releases.focusrite.com/com.focusrite.vocaster-hub/Vocaster%20Hub-#{version}.dmg"
  name "Vocaster Hub"
  desc "Interface controller for Focusrite Vocaster One and Two"
  homepage "https://focusrite.com/vocaster"

  livecheck do
    url "https://releases.focusrite.com/com.focusrite.vocaster-hub/vocaster-hub.release.mac.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Vocaster Hub.app"

  uninstall quit: "com.focusrite.vocaster-hub"

  zap trash: [
    "~/Library/Application Support/Focusrite/Vocaster Hub",
    "~/Library/Caches/com.juce.locks/juceAppLock_Vocaster Hub",
    "~/Library/HTTPStorages/com.focusrite.vocaster-hub",
    "~/Library/Preferences/com.focusrite.vocaster-hub.plist",
  ]
end
