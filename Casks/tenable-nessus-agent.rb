cask "tenable-nessus-agent" do
  version "8.13.1,12203"
  sha256 "9c3e7e0360c0cfeeba4a49108369dd626cb76269bca4d00eb5179f63a0c7d93b"

  url "https://www.tenable.com/downloads/api/v1/public/pages/nessus/downloads/#{version.after_comma}/download?i_agree_to_tenable_license_agreement=true"
  name "Tenable Nessus Agent"
  desc "Agent for Nessus vulnerability scanner"
  homepage "https://www.tenable.com/"

  livecheck do
    url "https://www.tenable.com/downloads/nessus?loginAttempted=true"
    strategy :page_match do |page|
      match = page.match(/"id":(\d+),"file":"Nessus-(\d+(?:\.\d+)*).dmg"/)
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
