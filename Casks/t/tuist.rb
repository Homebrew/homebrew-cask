cask "tuist" do
  version "3.31.2"
  sha256 "eecb590be9a18abff20b820556b0c17737d26fe502bf2ec1bbd69c5887714db2"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
