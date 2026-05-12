cask "yubico-authenticator" do
  version "7.3.3"
  sha256 "afda30861d6f899ed1905018fe234ee68c0ed0c3d04e0789e1538d02227aadc4"

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
