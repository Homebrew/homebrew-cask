cask "tiddly" do
  version "0.0.16"
  sha256 "5453bb8ccb8e1fcb7b97a2afc287a194dd1b0ac28d675951c4710322b98f3836"

  url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac64-v#{version}.zip"
  name "TiddlyWiki"
  desc "Browser for TiddlyWiki"
  homepage "https://github.com/Jermolene/TiddlyDesktop"

  app "TiddlyDesktop-mac64-v#{version}/TiddlyDesktop.app"
end
