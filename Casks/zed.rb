cask "zed" do
  version "0.78.1"
  sha256 "60ab002d4381905e23724cfcc845ccec33ab069f4d1e3b72d12c086c92f6521e"

  url "https://zed.dev/api/releases/stable/#{version}/Zed.dmg"
  name "Zed"
  desc "High-performance multiplayer code editor from the creators of Atom & Tree-sitter"
  homepage "https://zed.dev/"

  livecheck do
    url "https://zed.dev/releases"
    regex(%r{href=.*?/stable/(\d+(?:\.\d+)+)/Zed.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Zed.app"

  uninstall quit: "dev.zed.Zed"

  zap trash: [
    "~/.config/zed",
    "~/Library/Application Support/Zed",
    "~/Library/Logs/Zed",
    "~/Library/Preferences/dev.zed.Zed.plist",
    "~/Library/Saved Application State/dev.zed.Zed.savedState",
  ]
end
