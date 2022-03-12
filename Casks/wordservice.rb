cask "wordservice" do
  version "2.8.3"
  sha256 "35e553ec48d8dbae490142d184cd61396aed9a13e2c226580aba7683b1016d6e"

  url "https://download.devontechnologies.com/download/freeware/wordservice/#{version}/WordService.app.zip"
  name "WordService"
  desc "Tool that provides commands for working with selected text"
  homepage "https://www.devontechnologies.com/apps/freeware"

  livecheck do
    url "https://www.devontechnologies.com/support/download"
    regex(%r{<td>WordService</td><td>(\d+(?:\.\d+)+)</td>}i)
  end

  app "WordService.app"
end
