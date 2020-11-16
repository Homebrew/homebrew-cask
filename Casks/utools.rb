cask "utools" do
  version "1.3.4"
  sha256 "fb185fa159bff72f73da3b3260602724a0b5a2a214d9c49147795680eddadfe3"

  # res.u-tools.cn/ was verified as official when first introduced to the cask
  url "https://res.u-tools.cn/currentversion/uTools-#{version}.dmg"
  appcast "https://res.u-tools.cn/currentversion/public-mac.yml"
  name "uTools"
  homepage "https://u.tools/index.html"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "uTools.app"

  zap trash: [
    "~/Library/Application Support/uTools",
    "~/Library/Logs/uTools",
  ]
end
