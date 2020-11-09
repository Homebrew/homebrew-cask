cask "tinymediamanager" do
  version "4.0.5"
  sha256 "3985880440913d1551c1b890dd1033c58848e7e0d22b0b161ccd5c46efb46211"

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tmm_#{version}_mac.zip"
  appcast "https://release.tinymediamanager.org/"
  name "tinyMediaManager"
  homepage "https://www.tinymediamanager.org/"

  auto_updates true

  app "tinyMediaManager.app"

  caveats do
    depends_on_java "8+"
  end
end
