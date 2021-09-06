cask "tagspaces" do
  version "3.11.6"
  sha256 "0c064e34b18a29e17c68e5f13bb8f9e9bce030ff5e51986b55fde0c304a44148"

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
