cask "tsh" do
  version "11.2.1"
  sha256 "4dd5a977fc81ed3b9afcf958f32e32876efcf97db33baeb4e8a64bb28269e280"

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
