cask "tidgi" do
  arch arm: "arm64", intel: "x64"

  version "0.7.14"
  sha256 arm:   "96477ddd86ceacad9ead3d7300e8dfd8b58f72970b86883fcabcd740f7894b91",
         intel: "5a6bdb1beb38bf3e4ab0fe813f9c3c27d103e3610abbe039e35f42805148f091"

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
