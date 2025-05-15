cask "website-audit" do
  version "1.3.0a"
  sha256 "5f6f4ecd9355a5cba1cd7acb9aa680cb9e6acf3797e6a8ee0c2255ac515e408b"

  url "https://code.europa.eu/api/v4/projects/615/packages/generic/wat/#{version}/website-audit-#{version}-universal.dmg"
  name "Website Audit"
  desc "Analyze whether websites comply with GDPR according to EDPB guidelines"
  homepage "https://code.europa.eu/edpb/website-auditing-tool"

  livecheck do
    url "https://code.europa.eu/edpb/website-auditing-tool.git"
  end

  depends_on macos: ">= :catalina"

  app "website-audit.app"

  zap trash: [
    "~/Library/Application Support/website-audit",
    "~/Library/Preferences/com.edpb.wat-.plist",
    "~/Library/Saved Application State/com.edpb.wat-.savedState",
  ]
end
