cask "vpn-enabler" do
  version "5.2"
  sha256 :no_check

  url "https://cutedgesystems.com/downloads/VPNEnablerForHighSierra.zip"
  name "VPN Enabler"
  desc "VPN settings utility"
  homepage "https://cutedgesystems.com/"

  disable! date: "2024-12-16", because: :discontinued

  app "VPN Enabler.app"

  caveats do
    <<~EOS
      Download for newer version is walled.
    EOS
  end
end
