cask "time-out" do
  version "2.7.1"
  sha256 "40fe0c87b0c9007c372bf3297f878b3f60537852dfc921078ce00656ef9c7a17"

  url "https://www.dejal.com/download/timeout-#{version}.zip"
  name "Time Out"
  desc "Customizable timing of breaks"
  homepage "https://www.dejal.com/timeout/"

  livecheck do
    url "https://dejal.net/appcast/?prod=timeout&aed=direct&from=2037&rel=gen"
    strategy :page_match
    regex(%r{href=.*?/timeout-(\d+(?:\.\d+)*)\.zip}i)
  end

  app "Time Out.app"
end
