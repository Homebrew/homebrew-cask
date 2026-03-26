cask "tuist" do
  version "4.169.0"
  sha256 "356dc2ca8426b9fc3ff84df01b92a3d3e56d48c575e59e7b45a4cac75541548d"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
