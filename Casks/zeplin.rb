cask "zeplin" do
  version "3.7.1,968"
  sha256 "220a7b7479e769e00745390b2056f2f6fcfd32197ce39d68c6b5a994eea60869"

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
