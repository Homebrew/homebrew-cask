cask "tuist" do
  version "4.64.2"
  sha256 "c7d0cb8e1b9d775d70d045c632688cdf4bcd12cd0b7b2f740b2f6bf17e52753a"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
