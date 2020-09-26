cask "tinymediamanager" do
  version "4.0.1"
  sha256 "352a546713c4d65830f83b8b9921501fadb938860dcb88eeb382ebdb81176019"

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
