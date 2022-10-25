cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.0.4"
  sha256 arm:   "e2d791c0e4b6aa49cbeff0bf6db1deb7a5d7d7a289150bf2dc4b4586d074f7ad",
         intel: "e5bf67f6bc1ea7ae450046323503935e0218ce4c915942605de12f1bb32054f4"

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
