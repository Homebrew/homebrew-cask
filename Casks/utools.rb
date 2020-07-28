cask "utools" do
  version "1.2.0"
  sha256 "3f6a338488670f843df70d3c1311b1c1d2a11a24db4ce3cc5df9d77ed2682f17"

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
