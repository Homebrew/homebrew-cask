cask "tsh" do
  version "16.2.1"
  sha256 "2e630df8ac6d41d6f321d4cf23d5cdb5f68736e49ed1a23f7f6f9b53b194805a"

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
