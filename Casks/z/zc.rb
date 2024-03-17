cask "zc" do
  version "0.14.0"
  sha256 "27ecc3abeadb6ef617d03f0ccb6f226e2ee85180224e05850bfea55733a0fc9d"

  url "http://zectonal-releases.s3-website-us-east-1.amazonaws.com/zc/releases/download/v#{version}/zc_#{version}_macos.zip"
  name "zc"
  desc "Blazingly fast data observability"
  homepage "http://zectonal-releases.s3-website-us-east-1.amazonaws.com/index.html"

  livecheck do
    url "http://zectonal-releases.s3-website-us-east-1.amazonaws.com/zc/releases/download/index.html"
    strategy :page_match
    # regex(%r{href=.*?\"v(\d+(?:\.\d+)*)\/index\.html\"}i)
    regex(%r{href=.*?"http://zectonal-releases\.s3-website-us-east-1\.amazonaws\.com/zc/releases/download/v(\d+(?:\.\d+)*).*}i)
  end

  binary "zc"
end
