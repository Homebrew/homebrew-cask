cask "tidgi" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "7b70a14879636522623e1e8a27ae81800bab0480ff1e2510ec679faba9a953e7",
         intel: "c37a0d6a269386c8d7f2404250480131155bf91e7b6c7ef30013362b76dd51e5"

  url "https://github.com/tiddly-gittly/TidGi-Desktop/releases/download/v#{version}/TidGi-darwin-#{arch}-#{version}.zip"
  name "TidGi"
  desc "Personal knowledge-base app"
  homepage "https://github.com/tiddly-gittly/TidGi-Desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "TidGi.app"

  zap trash: [
    "~/Library/Application Support/TidGi",
    "~/Library/Caches/com.tidgi.app.ShipIt",
    "~/Library/Caches/com.tidgi.app",
    "~/Library/Preferences/com.tidgi.app.plist",
    "~/Library/Preferences/com.tidgi.plist",
    "~/Library/Saved Application State/com.microsoft.VSCode.savedState",
  ]
end
