cask "waves-central" do
  version :latest
  sha256 :no_check

  url "https://cf-installers.waves.com/WavesCentral/Install_Waves_Central.dmg"
  name "Waves Central"
  desc "Client to install and activate Waves products"
  homepage "https://www.waves.com/"

  app "Waves Central.app"
end
