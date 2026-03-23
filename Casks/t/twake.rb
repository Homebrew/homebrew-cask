cask "twake" do
  arch arm: "-arm64"

  version "5.0.0"
  sha256 arm:   "5a914a7f1c18adc7dfeaf9e7183b53be12d3cafc5619e4fd99d2214ef47a6400",
         intel: "8800bd35e9cd7adc7ba05dcf991c1bc2ee7d705f966e2fa66dbf31a1c354c950"

  url "https://github.com/cozy-labs/cozy-desktop/releases/download/v#{version}/Twake-Desktop-#{version}#{arch}.dmg",
      verified: "github.com/cozy-labs/cozy-desktop/"
  name "Twake Desktop"
  desc "File synchronisation for Twake Workplace"
  homepage "https://twake.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Twake Desktop.app"

  zap trash: [
    "~/.cozy-desktop",
    "~/Library/Application Support/Cozy Drive",
    "~/Library/Preferences/io.cozy.desktop.plist",
    "~/Library/Saved Application State/io.cozy.desktop.savedState",
  ]
end
