cask "whoozle-android-file-transfer" do
  version "4.1"
  sha256 "ac197fbe3800b6c2adb55332da4eecbcc5a322028bdd584a3d4b7e963c89abbb"

  url "https://github.com/whoozle/android-file-transfer-linux/releases/download/v#{version}/AndroidFileTransferForLinux.dmg",
      verified: "github.com/whoozle/android-file-transfer-linux/"
  appcast "https://github.com/whoozle/android-file-transfer-linux/releases.atom"
  name "Android File Transfer"
  desc "Android File Transfer for Linux"
  homepage "https://whoozle.github.io/android-file-transfer-linux/"

  conflicts_with cask: "whoozle-android-file-transfer-nightly"

  app "Android File Transfer for Linux.app"
  binary "#{appdir}/Android File Transfer for Linux.app/Contents/SharedSupport/bin/aft-mtp-cli"
  binary "#{appdir}/Android File Transfer for Linux.app/Contents/SharedSupport/bin/aft-mtp-mount"
end
