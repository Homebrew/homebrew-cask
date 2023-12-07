cask "tuist" do
  version "3.35.4"
  sha256 "3cf8d437361c582d653daa778132f17a058ae3aa5eaf34ea4f505ba4696fdd08"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
