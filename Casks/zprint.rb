cask "zprint" do
  version "1.2.7"
  sha256 "6b2e937119cc222ac4b349346c138ddc3642e1577ac34fd515d0c92ea0c5472d"

  url "https://github.com/kkinnear/zprint/releases/download/#{version}/zprintm-#{version}"
  name "zprint"
  desc "Library to reformat Clojure and Clojurescript source code and s-expressions"
  homepage "https://github.com/kkinnear/zprint"

  binary "zprintm-#{version}", target: "zprint"

  # No zap stanza required
end
