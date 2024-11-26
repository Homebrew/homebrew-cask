cask "website-audit" do
  version "1.2.5"
  sha256 "6246295baf27c8dbb3f7dc873d7de6068917c8dabd487e4c31b4332e600179ee"

  url "https://code.europa.eu/api/v4/projects/615/packages/generic/wat/#{version}/website-audit-#{version}-universal.dmg"
  name "Website Audit"
  desc "Analyse whether websites are compliant with the law"
  homepage "https://code.europa.eu/edpb/website-auditing-tool"

  livecheck do
    url "https://code.europa.eu/edpb/website-auditing-tool/-/tags?format=atom"
    strategy :atom
    regex(/website-audit-(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :catalina"

  app "website-audit.app"

  zap trash: "~/Library/Application Support/website-audit"
end
