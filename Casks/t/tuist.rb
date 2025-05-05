cask "tuist" do
  version "4.49.0"
  sha256 "34abc2a4f6e44ba4672ea0d130b0a5e858bbafff4894cdfee6792cf82297a827"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
