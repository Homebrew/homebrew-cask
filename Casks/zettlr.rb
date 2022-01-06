cask "zettlr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.1.1"

  if Hardware::CPU.intel?
    sha256 "21e8c50f6964fd62d4192cc60395e312b1b8ea800feb6670cb5679d2db83c4a6"
  else
    sha256 "0d844857ab08bc401e1ae42e9a10318c6f1318ce50d015df602feb3ac67aa8a3"
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
