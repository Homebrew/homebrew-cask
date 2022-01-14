cask "vale-server" do
  version "2.0.0"
  sha256 "3d8a84b268bc15a696df99739a96e1ed45b2b5b523f3ccf87fae117b4086f74e"

  url "https://github.com/errata-ai/vale-server/releases/download/v#{version.major}.0.0/Vale-Server-#{version}-macos.dmg",
      verified: "github.com/errata-ai/vale-server/"
  name "Vale Server"
  desc "Cross-platform desktop application"
  homepage "https://errata.ai/vale-server/"

  livecheck do
    url "https://github.com/errata-ai/vale-server/releases/"
    strategy :page_match
    regex(/Vale[._-]Server[._-]v?(\d+(?:\.\d+)+)[._-]macos\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Vale Server.app"

  zap trash: "~/Library/Application Support/Vale Server"
end
