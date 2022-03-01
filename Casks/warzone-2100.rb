cask "warzone-2100" do
  version "4.2.6"
  sha256 "4887195f112777381d210078c601be8c52daea6684ba53a4e9d4f71602336794"

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
