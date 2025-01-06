cask "xbar" do
  version "2.1.7-beta"
  sha256 "0a7ea7c40e4d4e2ecce0dae3c9c3773d459ddf5af86744f70c44b9f9901bc73f"

  url "https://github.com/matryer/xbar/releases/download/v#{version}/xbar.v#{version}.dmg",
      verified: "github.com/matryer/xbar/"
  name "xbar"
  desc "View output from scripts in the menu bar"
  homepage "https://xbarapp.com/"

  livecheck do
    url "https://xbarapp.com/dl"
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "xbar.app"

  uninstall quit:       "com.xbarapp.app",
            login_item: "xbar"

  zap trash: [
    "~/Library/Application Support/xbar",
    "~/Library/Caches/com.xbarapp.app",
    "~/Library/Preferences/com.xbarapp.app.plist",
    "~/Library/WebKit/com.xbarapp.app",
  ]
end
