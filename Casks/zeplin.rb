cask "zeplin" do
  version "3.11,1032"
  sha256 "4f9a54b240803874c596fc33c710582d09fb94e610bf6234edcf8bc93070c54e"

  url "https://api.zeplin.io/urls/download-mac"
  appcast "https://api.appcenter.ms/v0.1/public/sparkle/apps/8926efff-e734-b6d3-03d0-9f41d90c34fc"
  name "Zeplin"
  desc "Share, organize and collaborate on designs"
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
