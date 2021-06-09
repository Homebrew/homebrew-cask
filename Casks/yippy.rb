cask "yippy" do
  version "2.5.0"
  sha256 :no_check

  url "https://github.com/mattDavo/Yippy/releases/download/#{version}/Yippy.zip",
      verified: "github.com/mattDavo/Yippy/"
  appcast "https://github.com/mattDavo/Yippy/releases.atom"
  name "Yippy"
  desc "Open source clipboard manager"
  homepage "https://yippy.mattdavo.com/"

  app "Yippy.app"

  zap trash: [
    "~/Library/Application Support/MatthewDavidson.Yippy",
  ]
end
