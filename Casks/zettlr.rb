cask "zettlr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.2.4"

  if Hardware::CPU.intel?
    sha256 "038456c50d511801d092dabf41003fc8fd94ec8dc0d3b3056f03215bcea7fc42"
  else
    sha256 "dcd9495e2643971368de4e032759827f96ff8d1442fc3781c9ac8325aaa6b790"
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
