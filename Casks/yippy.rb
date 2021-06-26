cask "yippy" do
  version "2.8.0"
  sha256 "1c43660c32cd5d313c45ec956e3d06be1baa0aecb746d716b2ebd18661ca548e"

  url "https://github.com/mattDavo/Yippy/releases/download/#{version}/Yippy.zip",
      verified: "github.com/mattDavo/Yippy/"
  name "Yippy"
  desc "Open source clipboard manager"
  homepage "https://yippy.mattdavo.com/"

  app "Yippy.app"

  zap trash: "~/Library/Application Support/MatthewDavidson.Yippy"
end
