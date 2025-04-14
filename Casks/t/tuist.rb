cask "tuist" do
  version "4.48.1"
  sha256 "45d4c3da231ababb66d9eba636bea7b34ac128f71fc2ad44c0b9c964c3e8a18d"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
