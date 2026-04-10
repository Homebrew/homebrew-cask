cask "tuist" do
  version "4.178.1"
  sha256 "36373759c68618ceaaa02aa317a383ec9f651a52b1bbe156c6f1dabe937c3858"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
