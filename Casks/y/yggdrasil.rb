cask "yggdrasil" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.11"
  sha256 arm:   "f00357ee4117a66e71531fea639726f8973aa896ef5fa1beff553f10faf1223f",
         intel: "9e2606306c031e79c60893e21843571183828836b2108b172e496654054df731"

  url "https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v#{version}/yggdrasil-#{version}-macos-#{arch}.pkg"
  name "Yggdrasil"
  desc "End-to-end encrypted IPv6 networking to connect worlds"
  homepage "https://github.com/yggdrasil-network/yggdrasil-go"

  pkg "yggdrasil-#{version}-macos-#{arch}.pkg"

  uninstall launchctl: "yggdrasil",
            pkgutil:   "io.github.yggdrasil-network.pkg"

  zap delete: [
    "/etc/yggdrasil.conf",
    "/Library/Preferences/Yggdrasil",
  ]
end
