cask "zc" do
  version "0.14.0"
  sha256 "27ecc3abeadb6ef617d03f0ccb6f226e2ee85180224e05850bfea55733a0fc9d"

  url "https://docs.zectonal.com/zc/releases/download/v#{version}/zc_#{version}_macos.zip"
  name "zc"
  desc "Blazingly fast data observability"
  homepage "https://docs.zectonal.com/index.html"

  livecheck do
    url "https://docs.zectonal.com/zc/releases/download/index.html"
    regex(%r{href=.*?download/v?(\d+(?:\.\d+)+)/index.html}i)
  end

  binary "zc"
end
