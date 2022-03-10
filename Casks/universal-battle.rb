cask "universal-battle" do
  version "1.5.50,220305000"
  sha256 :no_check

  url "https://universalbattle2.com/builds/Mac.zip"
  name "Universal Battle"
  desc "Realtime multiplayer tabletop war game"
  homepage "https://universalbattle2.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "UB2.app"

  zap trash: "~/Library/Saved Application State/com.gamojo.sa.universalbattle2.savedState"
end
