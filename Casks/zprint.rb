cask "zprint" do
  version "1.2.5"
  sha256 "c780a55a3ed68882762c3c8c60ef5871495af4cb882492b2c89c8c1f459ccd51"

  url "https://github.com/kkinnear/zprint/releases/download/#{version}/zprintm-#{version}"
  name "zprint"
  desc "Library to reformat Clojure and Clojurescript source code and s-expressions"
  homepage "https://github.com/kkinnear/zprint"

  binary "zprintm-#{version}", target: "zprint"
end
