cask "wifiman-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 intel: "be1e7bb2123a94ecb624ebc26ad3b83d075193aa0d70b06b05bd0f0fb2f70da9",
         arm:   "47c1794e20d8a728f790beb26e8bdbd5a30a251fd421419d2589fb40ca3faf7a"

  url "https://desktop.wifiman.com/wifiman-desktop-#{version}-mac-#{arch}.pkg"
  name "WiFiman Desktop"
  desc "Network monitoring and troubleshooting tool"
  homepage "https://wifiman.com/"

  livecheck do
    url :url
    strategy :sparkle
  end

  pkg "wifiman-desktop-#{version}-mac-#{arch}.pkg"

  uninstall pkgutil: "wifiman-desktop-#{version}-mac-#{arch}.pkg"
end
