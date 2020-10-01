cask "tenable-nessus-agent" do
  version "8.1.0"
  sha256 "5f9cc7c8ac49226488e21bc2dac1a96ed38a8ed501ebda2e2915137dfc1a43d3"

  url "https://www.tenable.com/downloads/api/v1/public/pages/nessus-agents/downloads/11493/download?i_agree_to_tenable_license_agreement=true"
  name "Tenable Nessus Agent"
  desc "Agent for Nessus vulnerability scanner"
  homepage "https://www.tenable.com/"

  caveats "See https://docs.tenable.com/nessus/Content/InstallNessusAgentMacOSX.htm#Link-Agent-Using-Command-Line-Interface for instructions to link the agent to a server."

  pkg "Install Nessus Agent.pkg"
  uninstall pkgutil: [
    "com.tenablesecurity.NessusAgent.Preferences"
  ],
  delete: [
    "/Library/NessusAgent",
    "/Library/LaunchDaemons/com.tenablesecurity.nessusagent.plist",
    "/Library/PreferencePanes/Nessus Agent Preferences.prefPane",
    "/private/etc/tenable_tag"
  ],
  launchctl: [
    "com.tenablesecurity.nessusagent"
  ]

end
