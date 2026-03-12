cask "tuist" do
  version "4.157.3"
  sha256 "8a6948507f6b461d2a181ac9f4ef1df521f62a41f63f63e2e12a396f59e72a3b"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
