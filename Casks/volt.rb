cask "volt" do
  version "0.80"
  sha256 "fb25337fd6992aa2aca19f3ed282f67bd7faae52df20b86aa2a0bb43c0daf1e3"

  url "https://github.com/voltapp/volt/releases/download/#{version}/Volt.dmg",
      verified: "github.com/voltapp/volt/"
  appcast "https://github.com/voltapp/volt/releases.atom"
  name "Volt"
  homepage "https://volt-app.com/"

  app "Volt.app"
end
