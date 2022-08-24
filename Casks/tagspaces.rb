cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "4.5.2"
  sha256 arm:   "6f8ade0bb3a637557689885c68068ba30625e91f00fdb33c9ebd465824380cc8",
         intel: "222ccfc3a4884f2909ff739da7d58e1fe4d746924763bd3aa573df242a0dbbe7"

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
