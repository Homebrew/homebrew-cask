cask "tuist" do
  version "4.170.0"
  sha256 "8caacab26d8eac8e0858801db3a4736b31016bd2e8d8af71e111c3c57d3ef318"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
