cask "tinymediamanager" do
  version "4.3.2"
  sha256 "f914786341fcf9afd6ec9b37d0e8eafbeead380768d026bf2879bec7a0360da3"

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
