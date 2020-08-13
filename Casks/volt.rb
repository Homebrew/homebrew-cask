cask "volt" do
  version "0.80"
  sha256 "fb25337fd6992aa2aca19f3ed282f67bd7faae52df20b86aa2a0bb43c0daf1e3"

  # github.com/voltapp/volt/ was verified as official when first introduced to the cask
  url "https://github.com/voltapp/volt/releases/download/#{version}/Volt.dmg"
  appcast "https://github.com/voltapp/volt/releases.atom"
  name "Volt"
  homepage "https://volt-app.com/"

  app "Volt.app"
end
