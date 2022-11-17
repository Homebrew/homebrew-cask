cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.0.6"
  sha256 arm:   "5e611fba929032e1fcea311983f2a6507164114740def571a487d01151ac4828",
         intel: "3660a1699cb57be818aa30261ebd22834d38776b6df3a6be033b75f3e59c0f53"

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
