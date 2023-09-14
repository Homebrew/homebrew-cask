cask "zprint" do
  version "1.2.8"
  sha256 "03c146a2d411325114f38d211c3d4a9f2ab837b9287c46a7387114319253b2bd"

  url "https://github.com/kkinnear/zprint/releases/download/#{version}/zprintm-#{version}"
  name "zprint"
  desc "Library to reformat Clojure and Clojurescript source code and s-expressions"
  homepage "https://github.com/kkinnear/zprint"

  binary "zprintm-#{version}", target: "zprint"

  # No zap stanza required
end
