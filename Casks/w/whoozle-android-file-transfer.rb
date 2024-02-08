cask "whoozle-android-file-transfer" do
  version "4.3"
  sha256 "161996a15752183c5aa66682b37030f689b514b6183a5ee464de63b1980c8424"

  url "https://github.com/whoozle/android-file-transfer-linux/releases/download/v#{version}/AndroidFileTransferForLinux.dmg",
      verified: "github.com/whoozle/android-file-transfer-linux/"
  name "Android File Transfer"
  desc "Android File Transfer for Linux"
  homepage "https://whoozle.github.io/android-file-transfer-linux/"

  conflicts_with cask: "whoozle-android-file-transfer-nightly"

  app "Android File Transfer for Linux.app"
  binary "#{appdir}/Android File Transfer for Linux.app/Contents/SharedSupport/bin/aft-mtp-cli"
  binary "#{appdir}/Android File Transfer for Linux.app/Contents/SharedSupport/bin/aft-mtp-mount"

  # No zap stanza required
end
