cask "tinymediamanager" do
  version "4.0.4"
  sha256 "0268db7244c548ed22c5d733bf5353e5a1b7d26da0794cac03057170bda8e41a"

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
