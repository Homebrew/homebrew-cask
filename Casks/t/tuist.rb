cask "tuist" do
  version "4.126.0"
  sha256 "92e80a66315c9f6183b612cf6005602ed518b05e3ab1bfe4bf06f98cae8b760c"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
