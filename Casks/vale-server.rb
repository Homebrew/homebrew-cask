cask "vale-server" do
  version "2.0.0"
  sha256 "3d8a84b268bc15a696df99739a96e1ed45b2b5b523f3ccf87fae117b4086f74e"

  url "https://github.com/errata-ai/vale-server/releases/download/v#{version}/Vale-Server-#{version}-macos.dmg",
      verified: "github.com/errata-ai/vale-server/"
  name "Vale Server"
  desc "Cross-platform desktop application"
  homepage "https://errata.ai/vale-server/"

  depends_on formula: "vale"
  depends_on macos: ">= :catalina"

  app "Vale Server.app"

  zap trash: "~/Library/Application Support/Vale Server"
end
