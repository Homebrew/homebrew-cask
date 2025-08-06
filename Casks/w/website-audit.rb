cask "website-audit" do
  version "1.3.0a2"
  sha256 "b7f53aa3cef3cd73b22820dc4393da368a8934b608f22d78b70c8f8bdf2ce792"

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

  depends_on macos: ">= :catalina"

  app "website-audit.app"

  zap trash: [
    "~/Library/Application Support/website-audit",
    "~/Library/Preferences/com.edpb.wat-.plist",
    "~/Library/Saved Application State/com.edpb.wat-.savedState",
  ]
end
