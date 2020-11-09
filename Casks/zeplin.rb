cask "zeplin" do
  version "3.10.1,1027"
  sha256 "6e34c5180ba37ddf0ec2245f4ffc628c09605eb6e8f33f5c9937664c6b7fe27c"

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
