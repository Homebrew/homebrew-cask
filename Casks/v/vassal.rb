cask "vassal" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.7.1"
  sha256 arm:   "d02cfd0b2b77b50aee851ee18e60af63ef63d0a2ef3fde6cd186f02b478f6128",
         intel: "b2328641728af6fc751aaeedf0c9686baff62d2408e03cfcac5e01482621d4fb"

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

  zap trash: "~/Library/Application Support/VASSAL"
end
