cask "whoozle-android-file-transfer@nightly" do
  version :latest
  sha256 :no_check

  url "https://github.com/whoozle/android-file-transfer-linux/releases/download/continuous/AndroidFileTransferForLinux.dmg",
      verified: "github.com/whoozle/android-file-transfer-linux/"
  name "Android File Transfer"
  desc "Android File Transfer for Linux"
  homepage "https://whoozle.github.io/android-file-transfer-linux/"

  disable! date: "2024-12-22", because: :unmaintained

  conflicts_with cask: "whoozle-android-file-transfer"
  depends_on macos: ">= :sierra"

  app "Android File Transfer for Linux.app"
  binary "#{appdir}/Android File Transfer for Linux.app/Contents/SharedSupport/bin/aft-mtp-cli"
  binary "#{appdir}/Android File Transfer for Linux.app/Contents/SharedSupport/bin/aft-mtp-mount"

  # No zap stanza required
end
