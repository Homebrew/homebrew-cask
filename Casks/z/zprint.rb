cask "zprint" do
  arch arm: "a"

  version "1.3.0"
  sha256 arm:   "c2bf0161fbb182759b7f1e6e89d6b0ef50cbcacd5e6f990c8b5c4886f361efd3",
         intel: "9e1301b25a84126e556eda16f2f4bf626c1a2032e7ab33902b1b30bccd963417"

  url "https://github.com/kkinnear/zprint/releases/download/#{version}/zprintm#{arch}-#{version}"
  name "zprint"
  desc "Library to reformat Clojure and Clojurescript source code and s-expressions"
  homepage "https://github.com/kkinnear/zprint"

  binary "zprintm#{arch}-#{version}", target: "zprint"

  # No zap stanza required
end
