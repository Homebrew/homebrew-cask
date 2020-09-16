cask "time-out" do
  version "2.6.1"
  sha256 "c8eca829aa6f7120c742180bbd6e96b4d3e8c98a9cbc7274c83aa86ce56a0375"

  url "https://www.dejal.com/download/timeout-#{version}.zip"
  appcast "https://dejal.net/appcast/?prod=timeout&aed=direct&from=2037&rel=gen"
  name "Time Out"
  desc "Customizable timing of breaks"
  homepage "https://www.dejal.com/timeout/"

  app "Time Out.app"
end
