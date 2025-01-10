cask "tuist" do
  version "4.39.1"
  sha256 "d1f7c5a7795a19a0c4c4137277deba6d15126c962d494a9c752fb7707a286d99"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
