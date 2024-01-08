cask "tuist" do
  version "3.39.1"
  sha256 "1fe0e2f0e400c045f105cca3a95097579d7691a944e6f61177c3949c45a03410"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
