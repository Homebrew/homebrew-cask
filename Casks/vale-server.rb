cask "vale-server" do
  version "1.13.0"
  sha256 "a10067f4321386f49c5c79426cd078bc8cfea96684682a88809ad9f9c49d58a0"

  url "https://github.com/errata-ai/errata.ai/releases/download/v#{version.major}.0.0/Vale-Server-#{version}-macos.dmg",
      verified: "github.com/errata-ai/errata.ai/"
  name "Vale Server"
  desc "Cross-platform desktop application"
  homepage "https://errata.ai/vale-server/"

  livecheck do
    url "https://github.com/errata-ai/errata.ai/releases/"
    strategy :page_match
    regex(/Vale[._-]Server[._-]v?(\d+(?:\.\d+)+)[._-]macos\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Vale Server.app"

  zap trash: "~/Library/Application Support/Vale Server"
end
