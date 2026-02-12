cask "tuist" do
  version "4.144.1"
  sha256 "19e64febd848716ce4453a5c80dde75bef7e95b74e8bbfd3859e04548838b4b7"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
