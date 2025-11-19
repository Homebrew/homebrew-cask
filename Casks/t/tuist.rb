cask "tuist" do
  version "4.104.7"
  sha256 "bf7b86a8dbe5a4d43a35b0699d85291c4bc8800edbe4d48733cbce21d2fe8ad1"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
