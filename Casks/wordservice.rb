cask "wordservice" do
  version "2.8.2"
  sha256 "bf2a982702d922b984639b372510ee73cdfc28f5c5fbbb5fa540bb2702beab7a"

  url "https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/wordservice/#{version}/WordService.zip",
      verified: "s3.amazonaws.com/DTWebsiteSupport/"
  name "WordService"
  desc "Tool that provides commands for working with selected text"
  homepage "https://www.devontechnologies.com/apps/freeware"

  app "WordService.app"
end
