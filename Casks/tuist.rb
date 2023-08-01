cask "tuist" do
  version "3.22.0"
  sha256 "b74f7a3b1372da005d90f73800ee7a11ceaa429e77c1cf7ced4b9836960c144a"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
