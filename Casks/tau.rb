cask "tau" do
  arch arm: "-arm64", intel: ""

  version "2.32"
  sha256 :no_check

  url "http://tau.uoregon.edu/tau#{arch}.dmg"
  name "TAU"
  homepage "https://www.cs.uoregon.edu/research/tau/home.php"

  livecheck do
    url "https://www.cs.uoregon.edu/research/tau/downloads.php"
    regex(/version\s+(\d+(?:\.\d+)+)/i)
  end

  suite "TAU"
end
