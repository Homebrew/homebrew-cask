cask "tinymediamanager" do
  version "4.1.6"
  sha256 "26a1546b75bf13769840da2d7a7e79ccef2423d141685eb19ee8af7aa650be6d"

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tmm_#{version}_mac.zip"
  name "tinyMediaManager"
  desc "Media management tool"
  homepage "https://www.tinymediamanager.org/"

  livecheck do
    url "https://release.tinymediamanager.org/"
    regex(%r{href=.*?/tmm[._-]v?(\d+(?:\.\d+)+)[._-]mac\.zip}i)
  end

  auto_updates true

  app "tinyMediaManager.app"
end
