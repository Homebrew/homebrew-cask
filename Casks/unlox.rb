cask "unlox" do
  version "3.0.4.2"
  sha256 :no_check

  url "https://unlox.it/download/"
  appcast "https://unlox.it/download/update.php"
  name "Unlox"
  desc "Unlock your computer with your fingerprint"
  homepage "https://unlox.it/get"

  depends_on macos: ">= :high_sierra"

  app "Unlox.app"
end
