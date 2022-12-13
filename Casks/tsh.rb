cask "tsh" do
  version "11.1.2"
  sha256 "3a9efbc794fc4a64b17d7a6f95fd777f5fac457f9456ac5faaace7aa9e966fc2"

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
