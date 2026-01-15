cask "tuist" do
  version "4.125.0"
  sha256 "e2cc7966f999f2b5cfcc2458ce7d063f1ed9ad0aa43ff48d0ec6690810daa4f6"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
