cask "tinymediamanager" do
  version "4.2.5.1"
  sha256 "e0731305dfb39d6e9b742fccd0a23985d7a2fe61e4a024f76d9b321450d22d5d"

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

  # No zap stanza required
end
