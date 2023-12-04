cask "usql" do
  arch arm: "arm64", intel: "amd64"

  version "0.17.0"
  sha256 arm:   "67021ad7942fcce8eac4e3efce449e5223a60ad242b4e9801805ec0bfd4c2e84",
         intel: "637c9be294aed69aa7f2451219cad4e9ce2bfe0148042ad0c80d90d3715a3212"

  url "https://github.com/xo/usql/releases/download/v#{version}/usql-#{version}-darwin-#{arch}.tar.bz2"
  name "xo/usql"
  desc "Universal command-line interface for SQL databases"
  homepage "https://github.com/xo/usql"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "usql"
end
