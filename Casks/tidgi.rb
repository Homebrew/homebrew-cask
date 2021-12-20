cask "tidgi" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.7.1"

  if Hardware::CPU.intel?
    sha256 "afbb29ae19f09f2632a94ac050e939b82fc368a0070ebcab88465e9764d5499a"
  else
    sha256 "6a51812d50cb30a53ce079c202556590b02acf63a6b6e02a83ccdb3766f70c6f"
  end

  url "https://github.com/tiddly-gittly/TidGi-Desktop/releases/download/v#{version}/TidGi-darwin-#{arch}-#{version}.zip"
  name "TidGi"
  desc "Personal knowledge-base app"
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
