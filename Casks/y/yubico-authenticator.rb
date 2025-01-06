cask "yubico-authenticator" do
  version "7.1.1"
  sha256 "142b7fbdfe3a49f6e9c23f8951243e829ee082acd209d12f15ac2df8e48e4969"

  url "https://github.com/Yubico/yubioath-flutter/releases/download/#{version}/yubico-authenticator-#{version}-mac.dmg",
      verified: "github.com/Yubico/yubioath-flutter/releases/download/"
  name "Yubico Authenticator"
  desc "Application for generating TOTP and HOTP codes"
  homepage "https://developers.yubico.com/yubioath-flutter/"

  depends_on macos: ">= :catalina"

  app "Yubico Authenticator.app"

  zap trash: [
    "~/Library/Application Scripts/com.yubico.authenticator",
    "~/Library/Containers/com.yubico.authenticator",
  ]
end
