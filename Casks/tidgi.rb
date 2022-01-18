cask "tidgi" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.7.3"

  if Hardware::CPU.intel?
    sha256 "0b771350d754085db6f6e270a292c37c9563f67fd46b94718fef10ec0f1ed0d1"
  else
    sha256 "d3f40451ece62a4baa5a90fcc79014a7f22cfc30983ed6506661b01c55621b8e"
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
