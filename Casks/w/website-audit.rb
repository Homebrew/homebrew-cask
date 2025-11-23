cask "website-audit" do
  version "2.0.0"
  sha256 "c593410ba2b46c1948c446e281320812b237bd0b4afa197c9d310c0dbdf07152"

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
