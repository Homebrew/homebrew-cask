cask "yubico-authenticator" do
  version "7.1.0"
  sha256 "918684e75518dcd7fe008709582eb8040b06e4323b15b4fa979aab2a9946719a"

  url "https://github.com/Yubico/yubioath-flutter/releases/download/#{version}/yubico-authenticator-#{version}-mac.dmg",
      verified: "github.com/Yubico/yubioath-flutter/releases/download/"
  name "Yubico Authenticator"
  desc "Application for generating TOTP and HOTP codes"
  homepage "https://developers.yubico.com/yubioath-flutter/"

  depends_on macos: ">= :big_sur"

  app "Yubico Authenticator.app"

  zap trash: [
    "~/Library/Application Scripts/com.yubico.authenticator",
    "~/Library/Containers/com.yubico.authenticator",
  ]
end
