cask "tuist" do
  version "4.40.0"
  sha256 "d383f5b5664098d386de8f3878a5aee0df517292559b60bd172aebbb0e381dc3"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
