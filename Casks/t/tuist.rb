cask "tuist" do
  version "4.160.2"
  sha256 "ab7b513bb31b9a9c30e94ce76aa3b7a6fbbe9f0eaf2082613d8b31bf9933eea8"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
