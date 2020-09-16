cask "zprint" do
  version "1.0.0"
  sha256 "b707f1188c175c2028c014f0ae88cb384283aa6d097bb31298d66852162581b1"

  url "https://github.com/kkinnear/zprint/releases/download/#{version}/zprintm-#{version}"
  appcast "https://github.com/kkinnear/zprint/releases.atom"
  name "zprint"
  desc "Library to reformat Clojure and Clojurescript source code and s-expressions"
  homepage "https://github.com/kkinnear/zprint"

  binary "zprintm-#{version}", target: "zprint"
end
