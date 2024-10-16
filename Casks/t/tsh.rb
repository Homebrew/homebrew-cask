cask "tsh" do
  version "16.4.3"
  sha256 "acd5be70224e05e4e1766b6cf9eb8b66eb3998430e2953446023104f52d0cc9c"

  url "https://cdn.teleport.dev/tsh-#{version}.pkg",
      verified: "cdn.teleport.dev/"
  name "Teleport TSH"
  desc "SSH server for teams managing distributed infrastructure"
  homepage "https://goteleport.com/"

  livecheck do
    url "https://goteleport.com/download/"
    regex(/tsh[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  conflicts_with cask:    "tsh@13",
                 formula: "teleport"

  pkg "tsh-#{version}.pkg"

  uninstall pkgutil: "(.*).com.gravitational.teleport.tsh"

  zap trash: "~/.tsh"
end
