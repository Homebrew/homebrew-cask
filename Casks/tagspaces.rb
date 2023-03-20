cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.2.5"
  sha256 arm:   "3e1e6f9327f80839dd274665bafbcd60fb5661cc972548673a461e57092a5c9b",
         intel: "6b5d9fc6f00500b81843f937a8dea2cf75855fe37685ca66854f74cc9d0574b7"

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
