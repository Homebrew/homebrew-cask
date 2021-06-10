cask "universal-battle" do
  version "1.4.1"
  sha256 :no_check

  url "https://universalbattle2.com/builds/Mac.zip"
  name "universal-battle"
  desc "Realtime Multiplayer TableTop War Game"
  homepage "https://universalbattle2.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "OSX/Universal Battle 2.app"
end
