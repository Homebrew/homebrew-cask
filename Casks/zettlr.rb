cask "zettlr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.2.2"

  if Hardware::CPU.intel?
    sha256 "3a886eb3a48f86580bbd4f1ef2a2f8033331c0525355cef9d636f5f29449f2cc"
  else
    sha256 "f38aa2632962fcb41ac65ce6227ac42af83b7def291597e6cc8c8a4863ceab68"
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
