cask "tuist" do
  version "3.18.0"
  #sha256 "601543c96c50aaf1850951b1ad5e04ae73ccf3ab1d862545f673df311c076ee1"
  sha256 "afec90f79ff620821d56c3bcc361c25b7fb9bb876cceb77c0c38acc4921ff959"
  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip", verified: "github.com"
  name "tuist"
  desc "Basic fomula that install tuist cli tool"
  homepage "https://tuist.io/"

  binary "tuist"
end
