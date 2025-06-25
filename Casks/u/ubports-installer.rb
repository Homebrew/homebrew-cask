cask "ubports-installer" do
  arch arm: "arm64", intel: "x64"

  version "0.11.1"
  sha256 arm:   "18f9bdfe73a56f37cd90a43c0978ab98840ae0f2e5f27d8bbaa396d037fc63fe",
         intel: "2cce8bc79dca041b2d6f404c9ed1e257222f1cf9249c612e78eec7e903929b8c"

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
