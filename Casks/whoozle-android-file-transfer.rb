cask "whoozle-android-file-transfer" do
  version "4.0"
  sha256 "5bd55683d71d3c3ced260705da4b4b4c4fccf34865f5d006468156f3355a2b9b"

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
