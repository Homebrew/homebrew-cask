cask "wey" do
  version "0.3.7"
  sha256 "5ebbfad23a598d64c2fa1c311877546ae9b9c4e41e4040395496231fc70f68ec"

  url "https://github.com/yue/wey/releases/download/v#{version}/wey-v#{version}-darwin-x64.zip"
  name "Wey"
  desc "Open-source Slack desktop app"
  homepage "https://github.com/yue/wey"

  app "Wey.app"
end
