cask "zettlr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.2.6"

  if Hardware::CPU.intel?
    sha256 "73e7f745c4cea796947a554986e1efe21b796948a60f894bd1c8ba99e460523e"
  else
    sha256 "f120e076c936b5ff6c8e699445a2a40c4c0314882da64a6c3f1fed9c29699caa"
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
