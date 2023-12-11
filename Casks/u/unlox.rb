cask "unlox" do
  version "3.0.4.2"
  sha256 :no_check

  url "https://unlox.it/download/"
  name "Unlox"
  desc "Unlock your computer with your fingerprint"
  homepage "https://unlox.it/get"

  livecheck do
    url "https://unlox.it/download/update.php"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Unlox.app"
end
