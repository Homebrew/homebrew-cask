cask "tuist" do
  version "4.34.2"
  sha256 "965ba2da133fedc09023c2eb7a1ae4599e6c36b647002cb3b2ba66ea6235eb57"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
