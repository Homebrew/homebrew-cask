cask "zeplin" do
  version "3.9,1010"
  sha256 "f3bdc1ba9001f7f78c1471c96b673ff77a4d8be99910beab8c521c717418828f"

  url "https://api.zeplin.io/urls/download-mac"
  appcast "https://rink.hockeyapp.net/api/2/apps/8926efffe734b6d303d09f41d90c34fc"
  name "Zeplin"
  homepage "https://zeplin.io/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Zeplin.app"

  zap trash: [
    "~/Library/Logs/Zeplin",
    "~/Library/Caches/io.zeplin.osx",
    "~/Library/Preferences/io.zeplin.osx.plist",
  ]
end
