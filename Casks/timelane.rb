cask "timelane" do
  version "1.3"
  sha256 "7c59c67694e11686c3648e7bb1fad119368170ef6f389697029f144f5b64b8e1"

  # github.com/icanzilb/Timelane/ was verified as official when first introduced to the cask
  url "https://github.com/icanzilb/Timelane/releases/download/#{version}/Timelane.app-#{version}.zip"
  appcast "https://github.com/icanzilb/Timelane/releases.atom"
  name "Timelane"
  homepage "http://timelane.tools/"

  depends_on macos: ">= :mojave"

  app "Timelane.app"
end
