cask "tagspaces" do
  version "3.6.2"
  sha256 "44af73dfd63eac6b943cc8fc0234a13eb0861f78e3a4bf11b986997c56bba5de"

  # github.com/tagspaces/tagspaces/ was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip"
  appcast "https://github.com/tagspaces/tagspaces/releases.atom"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  app "TagSpaces.app"
end
