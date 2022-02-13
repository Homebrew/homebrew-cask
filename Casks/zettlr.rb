cask "zettlr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.2.1"

  if Hardware::CPU.intel?
    sha256 "16ca47bd540977a4c489e6886bcc1c48cfd048972d326b9e58afdf81c05fb495"
  else
    sha256 "243f6a6872e20cdab4fe9702f497e7fd348c1b0a5d558f605229117ebbc505ae"
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
