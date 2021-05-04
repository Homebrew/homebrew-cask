cask "tinymediamanager" do
  version "4.1.4"
  sha256 "b33a3839fd28e5d3dbb03192413771dd0e6236d778b33b289d4192af529317e4"

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tmm_#{version}_mac.zip"
  name "tinyMediaManager"
  desc "Media management tool"
  homepage "https://www.tinymediamanager.org/"

  livecheck do
    url "https://release.tinymediamanager.org/"
    strategy :page_match
    regex(%r{href=.*?/tmm_(\d+(?:\.\d+)*)_mac\.zip}i)
  end

  auto_updates true

  app "tinyMediaManager.app"

  caveats do
    depends_on_java "8+"
  end
end
