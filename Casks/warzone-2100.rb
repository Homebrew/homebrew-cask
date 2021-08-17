cask "warzone-2100" do
  version "4.0.1"
  sha256 "345d79b120de75df56b2cfd32026d53ede6b99277b607b02b1f7ebcd82149e1b"

  url "https://github.com/Warzone2100/warzone2100/releases/download/#{version}/warzone2100_macOS.zip",
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
