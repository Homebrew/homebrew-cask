cask "tuist" do
  version "4.51.0"
  sha256 "08f27bb8425124210af75f8087255ea2abea900acb4c1a4eabfc3e711bbd0401"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
