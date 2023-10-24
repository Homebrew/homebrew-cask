cask "tuist" do
  version "3.30.0"
  sha256 "eaa63e2d63d6185b11cf28e4c1bd2ea5d8de4fda43f328babab2305f2ebda217"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
