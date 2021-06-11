cask "talon" do
  version "1.5.0"
  sha256 :no_check

  url "https://talonvoice.com/dl/latest/talon-mac.dmg"
  name "Talon"
  desc "Enables you to control your computer with voice, eye tracking, or noises"
  homepage "https://talonvoice.com/"

  app "Talon.app"

  caveats do
    license "https://talonvoice.com/EULA.txt"
  end
end
