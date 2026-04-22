cask "tuist" do
  version "4.184.1"
  sha256 "975697f27de93b94d851c9f85b2e8c538880c40abb27164898e2d8424ae8367d"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
