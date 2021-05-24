cask "tinymediamanager" do
  version "4.1.5.1"
  sha256 "1556507310579ae5ddfed0acf76fa9c3ac7c5b597dfd26a90bb9615ff44e5644"

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
