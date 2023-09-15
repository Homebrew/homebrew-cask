cask "vero" do
  version "0.6.3"
  sha256 "771c0eccca8c1f4ad3cc37d7a9367b1e6c3c48e7f68838046ae4564ddf94bd63"

  url "https://downloads.vero.co/vero-beta-#{version}.dmg"
  name "VERO"
  desc "Ad-free, Algorithm-free Social"
  homepage "https://vero.co/"

  livecheck do
    url "https://vero.co/download/desktop/beta/macos"
    strategy :header_match
  end

  app "VERO.app"

  zap trash: [
    "~/Library/Application Support/VERO",
    "~/Library/Preferences/co.vero.desktop.plist",
    "~/Library/Saved Application State/co.vero.desktop.savedState",
  ]
end
