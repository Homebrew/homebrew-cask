cask "zettlr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.1.2"

  if Hardware::CPU.intel?
    sha256 "c16ef93a6de8b1857704346954beb8cdfb9629e8f773dcd5588d3a67b8f32a8c"
  else
    sha256 "098330ea9c1848acd202c299e3b1c4f8a309745c33d34c5c1bced24f5be7f48e"
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
