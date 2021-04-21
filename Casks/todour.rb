cask "todour" do
  version "2.20"
  sha256 "8e53cdf8533e490614d9c8da82a67eaf588839eded39667de695682f5d5dccba"

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
