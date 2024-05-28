cask "wings3d" do
  arch arm: "arm64", intel: "x86_64"

  version "2.3"
  sha256 arm:   "82b31a7a71ad470a59edd116181ac8d606a2ef83df065662ddec44c57912deda",
         intel: "dbb1bbb229c3a3737fc2558d7a64996780dada3da3c75e46bc357789dde8092a"

  url "https://downloads.sourceforge.net/wings/wings-#{version}-macos-#{arch}.dmg",
      verified: "sourceforge.net/wings/"
  name "Wings 3D"
  desc "Advanced subdivision modeller"
  homepage "https://www.wings3d.com/"

  app "Wings3D.app"
end
