cask "talon" do
  version "102-0.0.8.42"
  sha256 "3131a3600285a40696595619d74dbd1f268c60704e4e27898d59659d36532094"

  url "https://talonvoice.com/update/nmi5s3faoq6NzROd2dbCRg/Talon-#{version}.dmg"
  appcast "https://talonvoice.com/update/nmi5s3faoq6NzROd2dbCRg/appcast.xml"
  name "Talon"
  homepage "https://talonvoice.com/"

  app "Talon.app"

  caveats do
    license "https://talonvoice.com/EULA.txt"
  end
end
