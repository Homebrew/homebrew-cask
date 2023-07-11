cask "vero" do
  version "0.6.0"
  sha256 "639476a6280d67e300f9ed8aa3d4097254c4832e106cd0408c15b55bc911dee7"

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
