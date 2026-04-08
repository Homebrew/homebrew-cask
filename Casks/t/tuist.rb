cask "tuist" do
  version "4.176.2"
  sha256 "14d19253bf4c22df8687feacc85185f9acec471efbf9267107f3ad94e416e7e7"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
