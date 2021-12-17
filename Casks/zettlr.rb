cask "zettlr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.0.3"

  if Hardware::CPU.intel?
    sha256 "6b52bc0affe1b2039dd8dff452117017ff7671bffadeebd04c04583adc0a1e2c"
  else
    sha256 "9bc555560f3c689bb869033276d5d173cb6e12e3ee3b2dae5439e3269ec06007"
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
