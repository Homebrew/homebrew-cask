cask "tinymediamanager" do
  version "4.0.6"
  sha256 "75aaaa6d1e8a08195d6c56b361fbaa934d053f68a290bc88f1445f838a07fd9a"

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
