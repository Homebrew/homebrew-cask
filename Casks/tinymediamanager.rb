cask "tinymediamanager" do
  version "4.1.1"
  sha256 "681bd568a3c3b58b6c827e65b56fb6d6d87762b27ef534b59043e128fc2c5345"

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
