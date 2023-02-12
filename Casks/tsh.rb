cask "tsh" do
  version "12.0.2"
  sha256 "7f9c4593d626f2c987460c63e20c16140a8c5ee55a885fe4195abf5c8f3ae391"

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
