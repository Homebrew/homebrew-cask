cask "textbar" do
  version "3.2.182"
  sha256 "911e5a309b57df82872dae9c3ae0986a9618f1a69983166a8f8918843e4ade01"

  url "http://richsomerfield.com/apps/textbar/TextBar.app-#{version}.zip"
  name "TextBar"
  homepage "http://richsomerfield.com/apps/"

  livecheck do
    url "http://richsomerfield.com/apps/textbar/sparkle_textbar.xml"
    strategy :sparkle
  end

  app "TextBar.app"
end
