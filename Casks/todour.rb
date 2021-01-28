cask "todour" do
  version "2.19"
  sha256 "f116b76d90ab83f38d32383d553095161342740436074af26e8029297e1d5882"

  url "https://nerdur.com/Todour-v#{version}.dmg"
  name "Todour"
  desc "Todo.txt application Todour"
  homepage "https://nerdur.com/todour-pl/"

  livecheck do
    url "https://github.com/SverrirValgeirsson/Todour"
    strategy :github_latest
  end

  app "Todour.app"
end
