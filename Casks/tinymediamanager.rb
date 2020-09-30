cask "tinymediamanager" do
  version "4.0.2"
  sha256 "dc0a716a0075eeb0dca423cda66c31c5862e55dfee94f0e00961b19e3c53061c"

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
