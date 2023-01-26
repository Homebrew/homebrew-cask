cask "tsh" do
  version "11.2.3"
  sha256 "3654bd4dbf903cf55957e59ad9d698e798bbf16b0d052f75edf4185d452a6f6e"

  url "https://get.gravitational.com/tsh-#{version}.pkg"
  name "Teleport TSH"
  desc "SSH server for teams managing distributed infrastructure"
  homepage "https://gravitational.com/teleport"

  livecheck do
    url "https://goteleport.com/download/"
    regex(/tsh[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  conflicts_with formula: "teleport"

  pkg "tsh-#{version}.pkg"

  uninstall pkgutil: "(.*).com.gravitational.teleport.tsh"

  zap trash: "~/.tsh"
end
