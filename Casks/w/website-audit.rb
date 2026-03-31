cask "website-audit" do
  version "2.0.1"
  sha256 "f37e12a7cd7a91e32a368ad55c5ab7015a46927278fc626410892eede0a3f051"

  url "https://code.europa.eu/api/v4/projects/615/packages/generic/wat/#{version}/website-audit-#{version}-universal.dmg"
  name "Website Audit"
  desc "Analyze whether websites comply with GDPR according to EDPB guidelines"
  homepage "https://code.europa.eu/edpb/website-auditing-tool"

  livecheck do
    url "https://code.europa.eu/api/v4/projects/615/packages/"
    strategy :json do |json|
      json.map { |item| item["version"] }
    end
  end

  depends_on macos: ">= :monterey"

  app "website-audit.app"

  zap trash: [
    "~/Library/Application Support/website-audit",
    "~/Library/Preferences/com.edpb.wat-.plist",
    "~/Library/Saved Application State/com.edpb.wat-.savedState",
  ]
end
