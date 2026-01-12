cask "tuist" do
  version "4.122.1"
  sha256 "1cfaea40b384359a9c7ff7f1ddd92ad524c5e7d67719fae003073729535f9161"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
