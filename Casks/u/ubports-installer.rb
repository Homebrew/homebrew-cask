cask "ubports-installer" do
  arch arm: "arm64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "6823f1d3725fab683ba398f862d01ce4b4f3d01faf2797e78e325c0671ec3c6d",
         intel: "4c07e1840a2e0a6854095fc5326d33538374bf63626a95c177e3aba66e4fd3cb"

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
