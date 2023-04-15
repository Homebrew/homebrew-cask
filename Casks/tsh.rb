cask "tsh" do
  version "12.2.3"
  sha256 "b4e77f68416edaf1033ee880cb428b919d9e4b9e487bc164e288369ddf3b5966"

  url "https://cdn.teleport.dev/tsh-#{version}.pkg",
      verified: "cdn.teleport.dev/"
  name "Teleport TSH"
  desc "SSH server for teams managing distributed infrastructure"
  homepage "https://goteleport.com/"

  livecheck do
    url "https://goteleport.com/download/"
    regex(/tsh[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  conflicts_with formula: "teleport"

  pkg "tsh-#{version}.pkg"

  uninstall pkgutil: "(.*).com.gravitational.teleport.tsh"

  zap trash: "~/.tsh"
end
