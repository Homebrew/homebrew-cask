cask "zprint" do
  arch arm:   "a"

  version "1.2.8"
  sha256 intel: "03c146a2d411325114f38d211c3d4a9f2ab837b9287c46a7387114319253b2bd",
         arm:   "11246e16db97cb03649bf67938455c7cb25a3326a7e99e45d019b0ae405d8c3d"

  url "https://github.com/kkinnear/zprint/releases/download/#{version}/zprintm#{arch}-#{version}"
  name "zprint"
  desc "Library to reformat Clojure and Clojurescript source code and s-expressions"
  homepage "https://github.com/kkinnear/zprint"

  binary "zprintm#{arch}-#{version}", target: "zprint"

  # No zap stanza required
end
