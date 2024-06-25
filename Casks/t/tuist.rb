cask "tuist" do
  version "4.19.0"
  sha256 "c01e9d57c55504eb9884a49bcb28c7c09c1f1a7f468c8da3096fb4537222634c"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
