cask "zprint" do
  version "1.2.6"
  sha256 "a77483bcba536e051d8f493c717236451de2e7dd906f59fbbafbf32f7e78ed83"

  url "https://github.com/kkinnear/zprint/releases/download/#{version}/zprintm-#{version}"
  name "zprint"
  desc "Library to reformat Clojure and Clojurescript source code and s-expressions"
  homepage "https://github.com/kkinnear/zprint"

  binary "zprintm-#{version}", target: "zprint"

  # No zap stanza required
end
