cask "tuist" do
  version "4.54.3"
  sha256 "baf6ca4ad4f672aaf9a111173dfc3e844e982f50278001f36f22aa976bb2c097"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
