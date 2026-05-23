cask "ummaya" do
  arch arm: "arm64", intel: "x64"

  version "0.1.18"
  sha256 arm:   "84fee75d4fe826ef66cd56e8c48f551c4f00d753f7b4cb07af10e4488b4de0f8",
         intel: "99ff8d2051b5e5e2f9e3cf1377717d3a6c0097c1fa1f6d55a369d2c589443c35"

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
  depends_on formula: "uv"

  binary "ummaya"

  zap trash: "~/.ummaya"
end
