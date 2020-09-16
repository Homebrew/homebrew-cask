cask "tagspaces" do
  version "3.6.1"
  sha256 "1e39b3138e0b1e92ef1d33a39d22c757b4b4c0619bc45eb82adf899560aa4a0b"

  # github.com/tagspaces/tagspaces/ was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip"
  appcast "https://github.com/tagspaces/tagspaces/releases.atom"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  app "TagSpaces.app"
end
