cask "tuist" do
  version "4.128.1"
  sha256 "ee5c00d67eda46d1c7b2aaf19b450cba533aa17e4aa7612e80d7622409e08f29"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
