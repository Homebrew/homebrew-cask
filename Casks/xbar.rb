cask "xbar" do
  version "2.1.4-beta"
  sha256 "9ef1644d02be293529cc30302c919e856d8919d0016eeda67dbbdeacc8a891a7"

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
