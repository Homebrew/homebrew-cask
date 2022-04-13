cask "warzone-2100" do
  version "4.2.7"
  sha256 "f9fe0c825bd1b185823b303164489171ddf1621789ce2c1bcd5e54897bde27bc"

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
