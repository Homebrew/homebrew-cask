cask "tuist" do
  version "4.115.1"
  sha256 "4398a7d1c488dfd6bca95dbec992f296224ea8fa1058403c9235b38fb6c593e8"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
