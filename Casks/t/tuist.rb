cask "tuist" do
  version "4.58.0"
  sha256 "145fa3aa771720cb13906d8bf35848b55343fd5ac03e9513d7b6f9d9b545f26a"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
