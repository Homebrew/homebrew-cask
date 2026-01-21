cask "tuist" do
  version "4.129.2"
  sha256 "c3f90383e8919786f8385dae480dd4c7c54cd584f27804992ba631d839a0459a"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
