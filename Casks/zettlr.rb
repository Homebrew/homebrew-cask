cask "zettlr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.0.1"

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "b758a7b1aea7e1238ff666b96cfbc2d136e5b06f51fa6b02152ae4f415236ad8"
  else
    sha256 "f23d612685ef1abeaf8b0cbf8bce466c0303e9e2e12eaf0ac8c1975cdc01aa43"
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
