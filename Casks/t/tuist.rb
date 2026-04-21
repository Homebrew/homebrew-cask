cask "tuist" do
  version "4.183.0"
  sha256 "9d7ddd0e56a53dcc257cb521ca3bdc8bf5c10f30dfe1e04c70162564ffd7b16e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
