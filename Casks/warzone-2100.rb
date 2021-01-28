cask "warzone-2100" do
  version "3.4.1"
  sha256 "daac52f69bb5e5bb7457c6af603612b71a0752724281c8d14b59731fbae7ebd0"

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
