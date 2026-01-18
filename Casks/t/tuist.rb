cask "tuist" do
  version "4.128.2"
  sha256 "56b7db754fb77f71ba9dd584620c1b694fd9248f2307ba80158fd4a17c7888a1"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
