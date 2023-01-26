cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.2.2"
  sha256 arm:   "c3c2236f03cac7751ffbb07d9611cf6b79861b8a9ac793cf2ee182b4cb20365b",
         intel: "7e42e9dbeb00ca8fa3667d22c870a807cac4d6312eb9c53e6b52d33a147e1f7b"

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
