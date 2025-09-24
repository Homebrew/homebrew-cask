cask "tuist" do
  version "4.79.2"
  sha256 "3b8c2c5cfe04f9e9626d7de58210e484fb64a9ef0add28bddf1e328f1668a143"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
