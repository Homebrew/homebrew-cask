cask "tinymediamanager" do
  version "3.1.9"
  sha256 "f3da57459e75daf96f45b46a405503646e5a4d5399e6559e9c33daf23f268614"

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
