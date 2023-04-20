cask "yubico-authenticator" do
  version "6.2.0"
  sha256 "29e5305709c1019fd454aa09e2db95a3efad11b01d1f1bc9352e1cab36cf835c"

  url "https://developers.yubico.com/yubioath-flutter/Releases/yubico-authenticator-#{version}-mac.dmg"
  name "Yubico Authenticator"
  desc "Application for generating TOTP and HOTP codes"
  homepage "https://developers.yubico.com/yubioath-flutter/"

  livecheck do
    url "https://developers.yubico.com/yubioath-flutter/Releases/"
    regex(/href=.*?yubico[._-]authenticator[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "Yubico Authenticator.app"

  zap trash: [
    "~/Library/Application Scripts/com.yubico.authenticator",
    "~/Library/Containers/com.yubico.authenticator",
  ]
end
