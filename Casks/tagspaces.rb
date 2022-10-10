cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.0.3"
  sha256 arm:   "55c87cd34c2b4db5eb826c9c9a56c1e6b59e32b3f78282b4fc4edb7207758269",
         intel: "613036f1c5f3666fc88fd4186be7817ed0a854f08567f847e97082763611de5f"

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
