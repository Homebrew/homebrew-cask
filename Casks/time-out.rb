cask "time-out" do
  version "2.9"
  sha256 "be1da1a366d4c1e6b20e3e05c13daf0617d8a627d91b8b1c78c54bf78af2047e"

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
