cask "tuist" do
  version "4.181.0"
  sha256 "bdff56ef0af4e56fe42dbf657614c51a5faecdbd04b539dd2e32fc7f414033e2"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
