cask "tagspaces" do
  version "3.7.6"
  sha256 "4261ceaee971aaaf683172a14e5bab1c92e44762736cd6779177feffd350a652"

  # github.com/tagspaces/tagspaces/ was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip"
  appcast "https://github.com/tagspaces/tagspaces/releases.atom"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  app "TagSpaces.app"
end
