cask "tuist" do
  version "4.65.2"
  sha256 "b69ca5193693b9459e951bdd2df63f0b20a3d3f5b20d9a13b651240f4340b560"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
