cask "truetree" do
  version "0.9"
  sha256 "9260c8c274cf83ef33a6f5c1aff06b0593843c5ec79189bc40997cacda09ee03"

  url "https://github.com/themittenmac/TrueTree/releases/download/v#{version}/TrueTree#{version}.zip"
  name "TrueTree"
  desc "Command-line tool for pstree-like output"
  homepage "https://themittenmac.com/the-truetree-concept/"

  depends_on :macos

  binary "TrueTree/TrueTree"

  # No zap stanza required
end
