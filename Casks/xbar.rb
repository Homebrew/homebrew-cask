cask "xbar" do
  version "2.1.6-beta"
  sha256 "8f08486d5e7319adbca7e14bee3156c3398088b78f23ae65fcad58d95142c650"

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
