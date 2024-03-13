cask "zprint" do
  arch arm: "a"

  version "1.2.9"
  sha256 arm:   "25cb06b8f3721a8f7fb5a9731c139126ad268a51592cce1df2927a0e9422f4fe",
         intel: "963ccce9cc48195acea17b18477d6a19f16f31059d1652e321a5ea52cddea280"

  url "https://github.com/kkinnear/zprint/releases/download/#{version}/zprintm#{arch}-#{version}"
  name "zprint"
  desc "Library to reformat Clojure and Clojurescript source code and s-expressions"
  homepage "https://github.com/kkinnear/zprint"

  binary "zprintm#{arch}-#{version}", target: "zprint"

  # No zap stanza required
end
