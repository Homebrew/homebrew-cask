cask "tuist" do
  version "3.34.0"
  sha256 "551e36fe2ad8bc29d61f0fd1ba546b3f00aa28035f68f60b8e67bcaf58f4fab5"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
