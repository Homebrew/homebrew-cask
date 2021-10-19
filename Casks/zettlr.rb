cask "zettlr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.0.0"

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "af7f989046c93e955513522089d102435ccba4c63b1947dfd0d12151f8373ee9"
  else
    sha256 "132f008f3ae8b6b83dd8d65f84eab85722ef43f3243f67fa47589418e274c7c1"
  end

  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://github.com/Zettlr/Zettlr/"

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/zettlr",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
