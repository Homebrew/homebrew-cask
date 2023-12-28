cask "tuist" do
  version "3.37.0"
  sha256 "86606d13ec1b6c2d74797dee1e9c7b9fb14c42eb23b38c007f02797c6401f9d3"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
