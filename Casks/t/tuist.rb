cask "tuist" do
  version "4.3.4"
  sha256 "38b0e176a34ac87eaceb9a7e24618953304268ce7a819e4cec8aca63431b98d4"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
