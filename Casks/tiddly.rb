cask "tiddly" do
  version "0.0.15"
  sha256 "2846b4ad2f156bfcc55d49690c4a08e14762037b17884fde9eb3228ffcf8db15"

  url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac64-v#{version}.zip"
  name "TiddlyWiki"
  desc "Browser for TiddlyWiki"
  homepage "https://github.com/Jermolene/TiddlyDesktop"

  app "TiddlyDesktop-mac64-v#{version}/TiddlyDesktop.app"
end
