cask "tuist" do
  version "4.172.0"
  sha256 "cdc0b40701d1df4c6ccc9206689b2b1eeca287d26585d17caa1307544d990b2a"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
