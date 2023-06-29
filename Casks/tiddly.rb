cask "tiddly" do
  version "0.0.17"
  sha256 "991899b0a7fa6ebc8a971aea952e29ac49f3df48e88d3a5c0a9f6781f0d6e688"

  url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac64-v#{version}.zip"
  name "TiddlyWiki"
  desc "Browser for TiddlyWiki"
  homepage "https://github.com/Jermolene/TiddlyDesktop"

  app "TiddlyDesktop-mac64-v#{version}/TiddlyDesktop.app"
end
