cask "zed" do
  version "0.88.6"
  sha256 "b9922be98594a6e1e5ee42f30baa63c4d87ba819dba0340533478540b93abdab"

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
