cask "yubico-authenticator" do
  version "6.0.2"
  sha256 "bba72407285a715cd028dcade0683f2cbdbefca7ac2c98cfb448e1fccf955f40"

  url "https://developers.yubico.com/yubioath-flutter/Releases/yubico-authenticator-#{version}-mac.dmg"
  name "Yubico Authenticator"
  desc "Application for generating TOTP and HOTP codes"
  homepage "https://www.yubico.com/products/yubico-authenticator/"

  livecheck do
    url "https://developers.yubico.com/yubioath-flutter/Releases/"
    regex(%r{<a\shref="yubico-authenticator-(\d+(:?\.\d+)+)-mac\.dmg">.*<\/a>}i)
  end

  conflicts_with cask: "homebrew/cask-versions/yubico-authenticator-beta"

  app "Yubico Authenticator.app"
end
