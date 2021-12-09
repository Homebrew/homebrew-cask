cask "textbar" do
  version "3.5.6"
  sha256 "61fba4cdab18070c1ba21176072556df42a9c92fc280a51363028d86731a298e"

  url "http://richsomerfield.com/apps/textbar/TextBar.app-#{version}.zip"
  name "TextBar"
  homepage "http://richsomerfield.com/apps/"

  livecheck do
    url "http://richsomerfield.com/apps/textbar/sparkle_textbar.xml"
    strategy :sparkle
  end

  app "TextBar.app"
end
