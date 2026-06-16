cask "yubico-authenticator" do
  version "7.4.0"
  sha256 "fd776bea250dfddac6f4fa1bc2f24d27c3a1a11fba2bbeeafc5b9f1446f0701b"

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
