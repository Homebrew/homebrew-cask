cask "tuist" do
  version "4.157.4"
  sha256 "0e0be334ff1c111829c711eb30d9c9fc67240f632b88bb95c756706f65e4f299"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
