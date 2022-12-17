cask "zprint" do
  version "1.2.4"
  sha256 "ce8cf67d64827ec83c784e1f9fa2077aa084de1792738763372150ee33304022"

  url "https://github.com/kkinnear/zprint/releases/download/#{version}/zprintm-#{version}"
  name "zprint"
  desc "Library to reformat Clojure and Clojurescript source code and s-expressions"
  homepage "https://github.com/kkinnear/zprint"

  binary "zprintm-#{version}", target: "zprint"
end
