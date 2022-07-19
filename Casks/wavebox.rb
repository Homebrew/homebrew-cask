cask "wavebox" do
  arch = Hardware::CPU.intel? ? "mac" : "macarm64"

  version "10.103.36.2"

  if Hardware::CPU.intel?
    sha256 "f1888b53406af726a55983ff4dfc3ea55861c79857d63c7c6c781e5b1c1e8ab2"
  else
    sha256 "53a80e4be24a7ef9fea8fafdec05b0998431f3eb28622c45ff8e361d8956b9cd"
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
