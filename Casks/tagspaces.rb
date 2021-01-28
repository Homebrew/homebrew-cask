cask "tagspaces" do
  version "3.7.8"
  sha256 "1360dafc20d1a6a277c872e4de8a2a7980aa9b361d82ebe83a6e5a2d90b75c36"

  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip",
      verified: "github.com/tagspaces/tagspaces/"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "TagSpaces.app"
end
