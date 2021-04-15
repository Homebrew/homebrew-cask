cask "xbar" do
  version "2.0.42-beta"
  sha256 "0f5c9c1b7d4e134a8ec622bcb3ae369167cbf4c16fd483368ec156eeefb33659"

  url "https://github.com/matryer/xbar/releases/download/v#{version}/xbar.v#{version}.dmg",
      verified: "github.com/matryer/xbar/"
  name "xbar"
  desc "View output from scripts in the menu bar"
  homepage "https://xbarapp.com/"

  livecheck do
    url "https://xbarapp.com/dl"
    strategy :header_match
  end

  app "xbar.app"

  uninstall quit: "xbar.v#{version}"

  zap trash: [
    "~/Library/Preferences/xbar.v#{version}.plist",
    "~/Library/WebKit/xbar.v#{version}",
  ]
end
