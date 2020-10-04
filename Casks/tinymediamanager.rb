cask "tinymediamanager" do
  version "4.0.3"
  sha256 "273f605b708111ed23c9747e75a957b89e678eb54e59c4b6e75d6278744355f1"

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
