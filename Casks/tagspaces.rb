cask "tagspaces" do
  version "3.7.2"
  sha256 "b47e6717885481bdcd3c61256ecb2c8dd56cb09975fb9b8c323a06241128eb96"

  # github.com/tagspaces/tagspaces/ was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip"
  appcast "https://github.com/tagspaces/tagspaces/releases.atom"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  app "TagSpaces.app"
end
