cask "utools" do
  version "1.3.2"
  sha256 "c4297e8b5a65734c4a3fcd8ed3f10e6adacb97edc9745242c4306e5712787fae"

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
