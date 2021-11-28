cask "valkyrie" do
  version "2.5.6"
  sha256 "6b73e8f9eb7fca202feea27545163d08d237ea1b23289716a1d4d0928f392c0d"

  url "https://github.com/NPBruce/valkyrie/releases/download/release/#{version.major_minor}/v#{version}/valkyrie-macos-#{version}.tar.gz",
      verified: "github.com/NPBruce/valkyrie"
  name "Valkyrie"
  desc "GM for Fantasy Flight Board Games"
  homepage "https://npbruce.github.io/valkyrie/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Valkyrie.app"
end
