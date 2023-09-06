cask "zed" do
  version "0.102.1"
  sha256 "3f23823e1186014fa01c6fea9eb6a1865aa9b1e4b9f24fa51c0cac1d84585c90"

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
