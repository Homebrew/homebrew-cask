cask "tuist" do
  version "3.19.0"
  sha256 "dcbb0e528ef7fee7152f84658eb2da34ac4ef418f65cab808be818d940797073"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
