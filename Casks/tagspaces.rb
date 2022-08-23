cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "4.4.3"
  sha256 arm:   "62faf39ce08575421d3a9d67763399c2ee4a1bca09ebae3401b747fa0867e8dd",
         intel: "f40a73828459b5dd5cd31063bd0cfdfeef4736e2a6594951ca1658060bd6965d"

  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{arch}-#{version}.dmg",
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
