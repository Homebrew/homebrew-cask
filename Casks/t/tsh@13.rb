cask "tsh@13" do
  version "13.4.26"
  sha256 "223266f0b7563df42f0c44b03ab636994005b18531c6aa4d685d706b214dab2c"

  url "https://cdn.teleport.dev/tsh-#{version}.pkg",
      verified: "cdn.teleport.dev/"
  name "Teleport TSH (v13)"
  desc "SSH server for teams managing distributed infrastructure"
  homepage "https://goteleport.com/"

  disable! date: "2024-11-18", because: :discontinued

  conflicts_with cask:    [
                   "teleport",
                   "tsh",
                 ],
                 formula: "teleport"

  pkg "tsh-#{version}.pkg"

  uninstall pkgutil: "(.*).com.gravitational.teleport.tsh"

  zap trash: "~/.tsh"
end
