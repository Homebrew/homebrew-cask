cask "zettlr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.3.0"

  if Hardware::CPU.intel?
    sha256 "73ee8fbcf481b1cf68a3456f3c215be8a7d8835342220cc44fba6fa0440f37fc"
  else
    sha256 "0236d873d0d1477e480334fe8e68b795a8a7eb61cdbbf72d300143773e98955d"
  end

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.dmg"
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
