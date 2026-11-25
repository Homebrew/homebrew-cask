cask "yubico-authenticator" do
  version "7.5.0"
  sha256 "551fdf19e17a7848ad45837b90896327c7fd0449d569e781db8627fc06a1540b"

  url "https://developers.yubico.com/yubioath-flutter/Releases/yubico-authenticator-#{version}-macos.dmg"
  name "Yubico Authenticator"
  desc "Full-featured companion app to the YubiKey"
  homepage "https://developers.yubico.com/yubioath-flutter/"

  livecheck do
    url "https://developers.yubico.com/yubioath-flutter/Releases/"
    regex(/href=.*?yubico[._-]authenticator[._-]v?(\d+(?:\.\d+)+)[._-]mac(?:os)?\.dmg/i)
  end

  depends_on macos: :monterey

  app "Yubico Authenticator.app"

  zap trash: [
    "~/Library/Application Scripts/com.yubico.yubioath",
    "~/Library/Containers/com.yubico.yubioath",
  ]
end
