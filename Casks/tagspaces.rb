cask "tagspaces" do
  version "3.7.5"
  sha256 "a8cf5f81b67d38e4710f340e268889fbcc497495c52ea36fc8449e979d48e06f"

  # github.com/tagspaces/tagspaces/ was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip"
  appcast "https://github.com/tagspaces/tagspaces/releases.atom"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  app "TagSpaces.app"
end
