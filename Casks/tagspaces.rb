cask "tagspaces" do
  version "3.9.5"
  sha256 "5dd98dd4c674373dd8b80e7f46d2d65320831ae87309e7e2aff5c102fc1c78c1"

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
