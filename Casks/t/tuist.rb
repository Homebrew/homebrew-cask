cask "tuist" do
  version "4.9.0"
  sha256 "48160d66753499e1a4878178ea155fb3a6d2e3ebd45385f77ac6329e555881be"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
