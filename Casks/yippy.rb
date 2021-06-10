cask "yippy" do
  version "2.5.0"
  sha256 "58e8a5ff11d9c9a2b3cfae91e36ba74250670210b58977ebc0e02d46dc8ddb36"

  url "https://github.com/mattDavo/Yippy/releases/download/#{version}/Yippy.zip",
      verified: "github.com/mattDavo/Yippy/"
  name "Yippy"
  desc "Open source clipboard manager"
  homepage "https://yippy.mattdavo.com/"

  app "Yippy.app"

  zap trash: "~/Library/Application Support/MatthewDavidson.Yippy"
end
