cask "tuist" do
  version "3.35.2"
  sha256 "64e04c5eb1803d67dcae9d602f079048ae49ed8f6e600cb717045adeefd6556e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
