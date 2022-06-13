cask "wavebox" do
  arch = Hardware::CPU.intel? ? "mac" : "macarm64"

  version "10.102.21.2"

  if Hardware::CPU.intel?
    sha256 "d2609980fba00e14daf43a4b1b9a3893c7f83eba0cd7b398f22a14ec3ce73f2b"
  else
    sha256 "af921811c717ae8bb3bffaccad3614c1409a7442edebb652a9e49589a8b45631"
  end

  url "https://download.wavebox.app/stable/#{arch}/Install%20Wavebox%20#{version}.dmg",
      verified: "download.wavebox.app/"
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
