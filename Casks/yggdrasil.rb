cask "yggdrasil" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  version "0.4.2"

  if Hardware::CPU.intel?
    sha256 "00abf4a46dd1d75adbc35d9a687a99364d991e824f0302406e78caaa7857ef65"
  else
    sha256 "fe317aa64a31ff47d6f27d2ac81694c6bf0aafacd96bee02ede1add8a6a2e7a4"
  end

  url "https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v#{version}/yggdrasil-#{version}-macos-#{arch}.pkg"
  name "Yggdrasil"
  desc "End-to-end encrypted IPv6 networking to connect worlds"
  homepage "https://github.com/yggdrasil-network/yggdrasil-go"

  pkg "yggdrasil-#{version}-macos-#{arch}.pkg"

  uninstall launchctl: "yggdrasil",
            pkgutil:   "io.github.yggdrasil-network.pkg"
end
