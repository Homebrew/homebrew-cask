cask "zeplin" do
  version "4.7.2"
  sha256 :no_check

  url "https://api.zeplin.io/urls/download-mac"
  name "Zeplin"
  desc "Share, organize and collaborate on designs"
  homepage "https://zeplin.io/"

  livecheck do
    url "https://api.appcenter.ms/v0.1/public/sparkle/apps/8926efff-e734-b6d3-03d0-9f41d90c34fc"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Zeplin.app"

  zap trash: [
    "~/Library/Caches/io.zeplin.osx",
    "~/Library/Logs/Zeplin",
    "~/Library/Preferences/io.zeplin.osx.plist",
  ]
end
