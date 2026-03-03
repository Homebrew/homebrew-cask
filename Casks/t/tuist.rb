cask "tuist" do
  version "4.154.2"
  sha256 "e169e670d94f4c6c72701eeb9480a52c2ffb32cf125464145cf2de8709a05022"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
