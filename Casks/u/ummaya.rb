cask "ummaya" do
  arch arm: "arm64", intel: "x64"

  version "0.1.17"
  sha256 arm:   "88280d98f256fac399726adbc794723593e11ff4f2d4a060d8fda71e8137bc88",
         intel: "6823e69f32de101e2d4826c3eb9e73e8aa85bd5d793789637dbf49b570a94660"

  url "https://ummaya-docs.pages.dev/downloads/homebrew/v#{version}/ummaya-#{version}-macos-#{arch}.tar.gz"
  name "UMMAYA"
  desc "Conversational multi-agent harness for Korean public-service channels"
  homepage "https://ummaya-docs.pages.dev/"

  livecheck do
    url "https://ummaya-docs.pages.dev/downloads/homebrew/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on :macos
  depends_on formula: "bun"
  depends_on formula: "node"
  depends_on formula: "uv"

  binary "package/bin/ummaya", target: "ummaya"

  zap trash: "~/.ummaya"
end
