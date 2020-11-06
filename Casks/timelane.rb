cask "timelane" do
  version "2.0"
  sha256 "3334fbb6945d1f0cb8f535c399297356037f4fdd5c570fd7a7325f5b4bd8b57a"

  # github.com/icanzilb/Timelane/ was verified as official when first introduced to the cask
  url "https://github.com/icanzilb/Timelane/releases/download/#{version}/Timelane.app-#{version}.zip"
  appcast "https://github.com/icanzilb/Timelane/releases.atom"
  name "Timelane"
  homepage "http://timelane.tools/"

  depends_on macos: ">= :mojave"

  app "Timelane.app"
end
