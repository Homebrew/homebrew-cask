cask "zeplin" do
  version "3.10,1016"
  sha256 "9ffc3e4ad1012d254b8b500ccf2359b70f82d04ba71080f4ccb0de59cf0afb20"

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
