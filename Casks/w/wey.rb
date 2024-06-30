cask "wey" do
  version "0.3.7"
  sha256 "5ebbfad23a598d64c2fa1c311877546ae9b9c4e41e4040395496231fc70f68ec"

  url "https://github.com/yue/wey/releases/download/v#{version}/wey-v#{version}-darwin-x64.zip"
  name "Wey"
  desc "Open-source Slack desktop app"
  homepage "https://github.com/yue/wey"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Wey.app"

  zap trash: [
    "~/Library/Application Support/Wey",
    "~/Library/Caches/org.yue.wey",
    "~/Library/Preferences/org.yue.wey.plist",
    "~/Library/Saved Application State/org.yue.wey.savedState",
    "~/Library/WebKit/org.yue.wey",
  ]

  caveats do
    requires_rosetta
  end
end
