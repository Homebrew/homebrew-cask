cask "vassal" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.6.16"
  sha256 arm:   "282ce69f399f71a8d9bfb1c8660e703b9864a47aab58dd796c6e344b6f3f7642",
         intel: "6ac6ec7a5818e980970d0b577bc54d6ce40352079a88fcbb592cb48255599afa"

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macos-#{arch}.dmg",
      verified: "github.com/vassalengine/vassal/"
  name "VASSAL"
  desc "Board game engine"
  homepage "https://www.vassalengine.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "VASSAL.app"
end
