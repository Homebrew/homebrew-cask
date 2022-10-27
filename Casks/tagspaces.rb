cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.0.5"
  sha256 arm:   "6992c8a3b076c5bad70d62871132d15d1f290cc21bfc6b0f792bf66d9bc2bf63",
         intel: "62684bb84401e83c03a2f2290cade9992e9a4ebc4b48b6741d630d6c46a75a17"

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
