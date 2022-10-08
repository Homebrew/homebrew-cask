cask "tinymediamanager" do
  version "4.3.4"
  sha256 "6659ee38b0a7a30ca3620b4d1bd73cf51ddbb909acd3369eb8eed6311ee11ef4"

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
