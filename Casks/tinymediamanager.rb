cask "tinymediamanager" do
  version "3.1.8"
  sha256 "650a43fc41fd188eb336760d0038ef9fa8efdaeb5e618e00a4aeebb21a24e68d"

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
