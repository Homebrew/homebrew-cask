cask "tuist" do
  version "4.78.4"
  sha256 "b6011a9776b09ee7c523d9037cc8d6a7373c60300e9b1765b8ec9e1df51d602d"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
