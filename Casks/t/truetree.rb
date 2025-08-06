cask "truetree" do
  version "0.8"
  sha256 "10fcc907a053b8d89f31de2695a714f06732cc539b4af4f7cf22c0ce198b9098"

  url "https://github.com/themittenmac/TrueTree/releases/download/V#{version}/TrueTree.zip",
      verified: "github.com/themittenmac/TrueTree/"
  name "TrueTree"
  desc "Command-line tool for pstree-like output"
  homepage "https://themittenmac.com/the-truetree-concept/"

  depends_on macos: ">= :high_sierra"

  binary "TrueTree"

  # No zap stanza required
end
