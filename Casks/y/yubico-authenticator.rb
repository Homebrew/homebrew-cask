cask "yubico-authenticator" do
  version "7.4.1"
  sha256 "9adb0de91b139003c86903296d042053a78f3f60ead68388341bf1b1bc2e1ef3"

  url "https://developers.yubico.com/yubioath-flutter/Releases/yubico-authenticator-#{version}-mac.dmg"
  name "Yubico Authenticator"
  desc "Full-featured companion app to the YubiKey"
  homepage "https://developers.yubico.com/yubioath-flutter/"

  livecheck do
    url "https://developers.yubico.com/yubioath-flutter/Releases/"
    regex(/href=.*?yubico[._-]authenticator[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  depends_on :macos

  app "Yubico Authenticator.app"

  zap trash: [
    "~/Library/Application Scripts/com.yubico.yubioath",
    "~/Library/Containers/com.yubico.yubioath",
  ]
end
