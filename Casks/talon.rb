cask "talon" do
  version "0.1.5,108.0"
  sha256 "73372150129720e04d1fc1dfc7c1e275c309e5dcb15e71d7bca36e6256abd7f8"

  url "https://talonvoice.com/update/pgUuEYK3vzmYQtF2PMgOyK/Talon-#{version.after_comma.major}-#{version.before_comma}.dmg"
  name "Talon"
  homepage "https://talonvoice.com/"

  livecheck do
    url "https://talonvoice.com/update/pgUuEYK3vzmYQtF2PMgOyK/appcast.xml"
    strategy :sparkle
  end

  app "Talon.app"

  caveats do
    license "https://talonvoice.com/EULA.txt"
  end
end
