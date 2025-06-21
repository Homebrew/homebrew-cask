cask "whoozle-android-file-transfer" do
  version "4.5"
  sha256 "05d55ec3015d514cbe9a673c2f6034ea376cb9ad5ab875f8fd4000335605b0b2"

  url "https://github.com/whoozle/android-file-transfer-linux/releases/download/v#{version}/AndroidFileTransferForLinux.dmg",
      verified: "github.com/whoozle/android-file-transfer-linux/"
  name "Android File Transfer"
  desc "Android File Transfer for Linux"
  homepage "https://whoozle.github.io/android-file-transfer-linux/"

  conflicts_with cask: "whoozle-android-file-transfer@nightly"
  depends_on macos: ">= :sierra"

  app "Android File Transfer for Linux.app"
  binary "#{appdir}/Android File Transfer for Linux.app/Contents/SharedSupport/bin/aft-mtp-cli"
  binary "#{appdir}/Android File Transfer for Linux.app/Contents/SharedSupport/bin/aft-mtp-mount"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
