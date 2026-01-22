cask "tuist" do
  version "4.130.2"
  sha256 "e5a546b3a87b826ee43c74e4e8b1cc10091c097673b1d0dae2ba6844d45d636b"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
