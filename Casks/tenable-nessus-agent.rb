cask "tenable-nessus-agent" do
  version "8.2.3,12556"
  sha256 "5cf0141b68490de42e4d6f9611bb1ca51542b5a6bb474945450e70885d7d268f"

  url "https://www.tenable.com/downloads/api/v1/public/pages/nessus-agents/downloads/#{version.after_comma}/download?i_agree_to_tenable_license_agreement=true"
  name "Tenable Nessus Agent"
  desc "Agent for Nessus vulnerability scanner"
  homepage "https://www.tenable.com/"

  livecheck do
    url "https://www.tenable.com/downloads/nessus-agents?loginAttempted=true"
    strategy :page_match do |page|
      match = page.match(/"id"\s*:\s*(\d+)\s*,\s*"file"\s*:\s*"NessusAgent-(\d+(?:\.\d+)*).dmg"/)
      "#{match[2]},#{match[1]}"
    end
  end

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
