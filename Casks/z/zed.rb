cask "zed" do
  version "0.104.4"
  sha256 "42a7b30ad5ec2ffeb764e418a8caebb3e8e0f430768c84637f39c534f04742b3"

  url "https://zed.dev/api/releases/stable/#{version}/Zed.dmg"
  name "Zed"
  desc "Multiplayer code editor"
  homepage "https://zed.dev/"

  livecheck do
    url "https://zed.dev/releases"
    regex(%r{href=.*?/stable/(\d+(?:\.\d+)+)/Zed.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Zed.app"
  binary "#{appdir}/Zed.app/Contents/MacOS/cli", target: "zed"

  zap trash: [
    "~/.config/Zed",
    "~/Library/Application Support/Zed",
    "~/Library/Logs/Zed",
    "~/Library/Saved Application State/dev.zed.Zed.savedState",
  ]
end
