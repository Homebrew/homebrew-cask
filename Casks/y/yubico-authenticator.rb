cask "yubico-authenticator" do
  version "7.3.2"
  sha256 "ad34e188025ec5d3f557dbedf08c7f50586852380833a58ced2df2148ee75864"

  url "https://developers.yubico.com/yubioath-flutter/Releases/yubico-authenticator-#{version}-mac.dmg"
  name "Yubico Authenticator"
  desc "Full-featured companion app to the YubiKey"
  homepage "https://developers.yubico.com/yubioath-flutter/"

  livecheck do
    url "https://developers.yubico.com/yubioath-flutter/Releases/"
    regex(/href=.*?yubico[._-]authenticator[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  app "Yubico Authenticator.app"

  zap trash: [
    "~/Library/Application Scripts/com.yubico.yubioath",
    "~/Library/Containers/com.yubico.yubioath",
  ]
end
