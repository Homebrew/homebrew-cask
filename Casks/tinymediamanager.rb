cask "tinymediamanager" do
  version "4.2.4"
  sha256 "7236340d9a169e6e9a93843777432031a1f9040025c706f9f2c4eb0ef0f7c63b"

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tmm_#{version}_macos-x86_64.zip"
  name "tinyMediaManager"
  desc "Media management tool"
  homepage "https://www.tinymediamanager.org/"

  livecheck do
    url "https://release.tinymediamanager.org/"
    regex(%r{href=.*?/tmm[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]x86[._-]64\.zip}i)
  end

  auto_updates true

  app "tinyMediaManager.app"
end
