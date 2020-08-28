cask "zeplin" do
  version "3.8,994"
  sha256 "f3cdd08324583993efb64ccf582a75372be1f91e31d5bbeb866b26369fa855ef"

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
