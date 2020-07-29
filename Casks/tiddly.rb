cask "tiddly" do
  version "0.0.14"
  sha256 "5b311671ae872e34bc96b4ac96d69ce96b9910e38af9d4722cf01f192ab5e6b2"

  url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac64-v#{version}.zip"
  appcast "https://github.com/Jermolene/TiddlyDesktop/releases.atom"
  name "TiddlyWiki"
  homepage "https://github.com/Jermolene/TiddlyDesktop"

  app "TiddlyDesktop-mac64-v#{version}/TiddlyDesktop.app"
end
