cask "tsh" do
  version "11.1.4"
  sha256 "c9a7c6cf8cbf7bab8ca0c3a82e7941b3d89e4691d6514bbe64ab9ce42ea96ed5"

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
