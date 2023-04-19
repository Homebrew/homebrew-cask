cask "tuist" do
  version "3.18.0"
  sha256 "afec90f79ff620821d56c3bcc361c25b7fb9bb876cceb77c0c38acc4921ff959"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Basic fomula that install tuist cli tool"
  homepage "https://tuist.io/"

  binary "tuist"
end
