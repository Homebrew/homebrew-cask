cask "wavebox" do
  version "10.0.518.2"

  if Hardware::CPU.intel?
    sha256 "9504bf73a97cddaa250077501b620fda87650fa13ead9b5a044ccfbef84f6828"

    url "https://download.wavebox.app/stable/mac/Install%20Wavebox%20#{version}.dmg",
        verified: "download.wavebox.app/"
  else
    sha256 "776a4d6e7f13dfbdcdb627434781c91bbd4ec13de4a21123cf3fd0df979d8f9e"

    url "https://download.wavebox.app/stable/macarm64/Install%20Wavebox%20#{version}.dmg",
        verified: "download.wavebox.app/"
  end

  name "Wavebox"
  desc "Web browser"
  homepage "https://wavebox.io/"

  livecheck do
    url "https://download.wavebox.app/latest/stable/mac"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Wavebox.app"

  uninstall quit: "io.wavebox.wavebox"

  zap trash: [
    "~/Library/Application Support/WaveboxApp",
    "~/Library/Caches/com.bookry.wavebox",
    "~/Library/Caches/WaveboxApp",
    "~/Library/Preferences/com.bookry.wavebox.plist",
    "~/Library/Saved Application State/com.bookry.wavebox.savedState",
  ]
end
