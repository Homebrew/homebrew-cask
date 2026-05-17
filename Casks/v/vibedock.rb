cask "vibedock" do
  version "0.1.2"
  sha256 "3fd3aa347395d7c3bfbbbae0ce5ffcd7b9dce999bd8552414bb6da9ee9debbce"

  url "https://dl.vibedock.dev/Vibedock-#{version}.dmg"
  name "Vibedock"
  desc "Menu bar manager for Claude Code MCP servers"
  homepage "https://vibedock.dev"

  depends_on macos: ">= :ventura"

  app "Vibedock.app"

  zap trash: [
    "~/Library/Application Support/Vibedock",
    "~/Library/Preferences/dev.vibedock.plist",
    "~/Library/Caches/dev.vibedock",
  ]
end
