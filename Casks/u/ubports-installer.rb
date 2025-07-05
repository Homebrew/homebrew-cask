cask "ubports-installer" do
  arch arm: "arm64", intel: "x64"

  version "0.11.2"
  sha256 arm:   "21f40396f8f8d1b0da9b3b7b029cd6d15988603c64cdfceb5d9ba1eb4232cd3c",
         intel: "cd5532fff5c2a35e04f55b6b0ad03918404bfbaa1065e54a87cf9fb69609807b"

  url "https://github.com/ubports/ubports-installer/releases/download/#{version}/ubports-installer_#{version}_mac_#{arch}.dmg",
      verified: "github.com/ubports/ubports-installer/"
  name "ubports installer"
  desc "Application to install ubports on mobile devices"
  homepage "https://ubports.com/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-beta)?)/i)
    strategy :github_latest
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :big_sur"

  app "ubports-installer.app"

  zap trash: [
    "~/Library/Application Support/ubports-installer",
    "~/Library/Preferences/com.ubports.installer.plist",
    "~/Library/Saved Application State/com.ubports.installer.savedState",
  ]
end
