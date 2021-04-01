cask "xbar" do
  version "2.0.38-beta"
  sha256 "b3386dc7ac9ce092b1a1cd8e1cbbda6369db89584708e6b95c630f0c0450a44d"

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
