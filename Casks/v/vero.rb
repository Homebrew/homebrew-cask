cask "vero" do
  version "0.17.2102"
  sha256 "0386399dbf9c7aa5f8f1e97bf14320e19fafe31dd943b5d4ce306a1540f2fd0f"

  url "https://downloads.vero.co/vero-beta-#{version}.dmg"
  name "VERO"
  desc "Ad-free, Algorithm-free Social"
  homepage "https://vero.co/"

  livecheck do
    url "https://vero.co/download/desktop/beta/macos"
    strategy :header_match
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :catalina"

  app "VERO.app"

  zap trash: [
    "~/Library/Application Support/VERO",
    "~/Library/Preferences/co.vero.desktop.plist",
    "~/Library/Saved Application State/co.vero.desktop.savedState",
  ]
end
