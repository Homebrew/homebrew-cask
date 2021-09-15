cask "utools" do
  version "2.1.0"
  sha256 "3cc48b309b696ca5c92f11e0d32d96edf25ce0772ff5e279365f09e7c402bc03"

  url "https://publish.u-tools.cn/version2/uTools-#{version}.dmg",
      verified: "publish.u-tools.cn/"
  name "uTools"
  desc "Plug-in productivity tool set"
  homepage "https://u.tools/index.html"

  livecheck do
    url "https://publish.u-tools.cn/version2/latest-mac.yml?noCache=true"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "uTools.app"

  zap trash: [
    "~/Library/Application Support/uTools",
    "~/Library/Logs/uTools",
  ]
end
