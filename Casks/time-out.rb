cask "time-out" do
  version "2.7"
  sha256 "5fe846ce36b9f3a600ac8bf092f16c292fe2b18cdca8eb427093c036806a5b7c"

  url "https://www.dejal.com/download/timeout-#{version}.zip"
  appcast "https://dejal.net/appcast/?prod=timeout&aed=direct&from=2037&rel=gen"
  name "Time Out"
  desc "Customizable timing of breaks"
  homepage "https://www.dejal.com/timeout/"

  app "Time Out.app"
end
