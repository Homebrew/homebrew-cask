cask "unlox" do
  version "3.0.4.2"
  sha256 "3e7b817066e47a694ef405734c63cfafb720c6b16274b3127704b4a8206011e4"

  url "https://unlox.it/download/"
  appcast "https://unlox.it/download/update.php"
  name "Unlox"
  desc "Unlock your computer with your fingerprint"
  homepage "https://unlox.it/get"

  depends_on macos: ">= :high_sierra"

  app "Unlox.app"
end
