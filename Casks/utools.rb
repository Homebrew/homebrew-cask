cask "utools" do
  version "1.3.3"
  sha256 "e3369af6d64f2ebd61632c9c35cda2be0a00813272240ff20c0cdae0398bc2f6"

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
