cask "todour" do
  version "2.21"
  sha256 "8363d05aeb1542d03870099dcc7a2727098cfd91c0a1db1efab6e5ba92402d99"

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
