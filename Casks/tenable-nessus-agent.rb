cask "tenable-nessus-agent" do
  version "10.2.0,17230"
  sha256 "dee7a89cfa165673352717f12e864e93d0899ea67b8fcf017c35b1d45f7dd02d"

  url "https://www.tenable.com/downloads/api/v1/public/pages/nessus-agents/downloads/#{version.csv.second}/download?i_agree_to_tenable_license_agreement=true"
  name "Tenable Nessus Agent"
  desc "Agent for Nessus vulnerability scanner"
  homepage "https://www.tenable.com/"

  livecheck do
    url "https://www.tenable.com/downloads/nessus-agents?loginAttempted=true"
    strategy :page_match do |page|
      match = page.match(/"id"\s*:\s*(\d+)\s*,\s*"file"\s*:\s*"NessusAgent[._-]v?(\d+(?:\.\d+)+)\.dmg"/)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true

  pkg "Install Nessus Agent.pkg"

  uninstall pkgutil:   "com.tenablesecurity.NessusAgent.Preferences",
            delete:    [
              "/Library/NessusAgent",
              "/Library/LaunchDaemons/com.tenablesecurity.nessusagent.plist",
              "/Library/PreferencePanes/Nessus Agent Preferences.prefPane",
              "/private/etc/tenable_tag",
            ],
            launchctl: "com.tenablesecurity.nessusagent"

  caveats do
    license "https://static.tenable.com/prod_docs/tenable_slas.html"
  end
end
