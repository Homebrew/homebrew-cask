cask "utools" do
  version "1.3.1"
  sha256 "4990cc508c27aed1e31c469fe37b7169cf373f0daef0837869497f56b7155eb5"

  # resource.u-tools.cn/ was verified as official when first introduced to the cask
  url "https://resource.u-tools.cn/currentversion/uTools-#{version}.dmg"
  appcast "https://resource.u-tools.cn/currentversion/latest-mac.yml"
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
