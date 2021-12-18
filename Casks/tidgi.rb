cask "tidgi" do
  arch = Hardware::CPU.intel? ? "darwin-x64" : "darwin-arm64"

  version "latest"

  sha256 :no_check

  url "https://github.com/tiddly-gittly/TidGi-Desktop/releases/latest/download/TiddlyGit-#{arch}-#{version}.zip"
  name "TidGi"
  desc "Customizable personal knowledge-base with Github as unlimited storage and blogging platform."
  homepage "https://github.com/tiddly-gittly/TidGi-Desktop"

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
