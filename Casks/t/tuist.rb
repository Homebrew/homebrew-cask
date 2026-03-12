cask "tuist" do
  version "4.157.2"
  sha256 "fc1b057da7ca74ddc52d6b71043d5558247ee8a92a5de778fa1a843850ade7a2"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
