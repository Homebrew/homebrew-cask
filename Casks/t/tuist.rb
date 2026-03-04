cask "tuist" do
  version "4.154.3"
  sha256 "6d920cf88eea6525b68cfe64d4f1ef67cc4d9cc8af1130e7a9d025d8884f9d87"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
