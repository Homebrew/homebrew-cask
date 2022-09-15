cask "time-out" do
  version "2.9.1"
  sha256 "fefbde4012e86ac20f1ef9b7e3fd5505a918cf08c5e4c7e79b02bc6f9b0be445"

  url "https://www.dejal.com/download/timeout-#{version}.zip"
  name "Time Out"
  desc "Customizable timing of breaks"
  homepage "https://www.dejal.com/timeout/"

  livecheck do
    url "https://dejal.net/appcast/?prod=timeout"
    strategy :sparkle, &:short_version
  end

  app "Time Out.app"
end
