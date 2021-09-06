cask "warzone-2100" do
  version "4.1.3"
  sha256 "828009fa7f0245eff5da4e57f68db05e1c8f98c4fb9c2871deabb53a1df96f5e"

  url "https://github.com/Warzone2100/warzone2100/releases/download/#{version}/warzone2100_macOS_universal.zip",
      verified: "github.com/Warzone2100/warzone2100/"
  name "Warzone 2100"
  desc "Free and open-source real time strategy game"
  homepage "https://wz2100.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Warzone 2100.app"

  zap trash: [
    "~/Library/Application Support/Warzone 2100*",
    "~/Library/Saved Application State/net.wz2100.Warzone2100.savedState",
  ]
end
