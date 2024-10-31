cask "tuist" do
  version "4.32.0"
  sha256 "943760da4c2db5519abfdeb942ec5b5ee8e07d0796305a37a27ce6367041b0f5"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
