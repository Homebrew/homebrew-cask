cask "todotxt" do
  version "2.4.0"
  sha256 "67f94669661e5b2186f3b619465d18206d8e20ae082d672c86b17d766f59fd41"

  url "https://github.com/mjdescy/TodoTxtMac/releases/download/#{version}/TodoTxtMac.app.zip",
      verified: "github.com/mjdescy/TodoTxtMac/"
  name "TodoTxtMac"
  homepage "https://mjdescy.github.io/TodoTxtMac/"

  app "TodoTxtMac.app"
end
