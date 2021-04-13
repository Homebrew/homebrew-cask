cask "tinymediamanager" do
  version "4.1.3"
  sha256 "f39526beac22ade508c5748dc050636215ae14c721d70e9052fa3c8279ebf2ae"

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
