cask "whoozle-android-file-transfer" do
  version "3.9"
  sha256 "d0ccedbd2d5e67c2cfbec0bddf7a5696833531e36809ca6162e69dbfc4308d43"

  # github.com/whoozle/android-file-transfer-linux/ was verified as official when first introduced to the cask
  url "https://github.com/whoozle/android-file-transfer-linux/releases/download/v#{version}/AndroidFileTransferForLinux.dmg"
  appcast "https://github.com/whoozle/android-file-transfer-linux/releases.atom"
  name "Android File Transfer"
  desc "Android File Transfer for Linux"
  homepage "https://whoozle.github.io/android-file-transfer-linux/"

  conflicts_with cask: "whoozle-android-file-transfer-nightly"

  app "Android File Transfer for Linux.app"
  binary "#{appdir}/Android File Transfer for Linux.app/Contents/SharedSupport/bin/aft-mtp-cli"
  binary "#{appdir}/Android File Transfer for Linux.app/Contents/SharedSupport/bin/aft-mtp-mount"
end
