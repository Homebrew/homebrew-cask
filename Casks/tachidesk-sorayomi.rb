cask "tachidesk-sorayomi" do
  version "0.5.1"
  sha256 "09dcaddd040b41ac5321d19b1099769511d2497c4553be283826efcbc87ee858"

  url "https://github.com/Suwayomi/Tachidesk-Sorayomi/releases/download/#{version}/tachidesk-sorayomi-#{version}-macos-x64.zip"
  name "Tachidesk Sorayomi"
  desc "FOSS Manga reader app to read manga from Tachidesk-Server"
  homepage "https://github.com/Suwayomi/Tachidesk-Sorayomi/"

  app "Tachidesk Sorayomi.app"
end
