cask "vpn-enabler" do
  on_el_capitan :or_older do
    version "3.0.6"
    sha256 "fae22c4e3b05c77d3658b45c92398c3a6f7fa7792bc124e1b463efb662519536"

    url "https://cutedgesystems.com/downloads/VPNEnablerForElCapitan.zip"
  end
  on_sierra do
    version "4.0"
    sha256 "50e22bcc2e341adff7fc625714c251ac0ac889cfb55983e026cff8478ebd3793"

    url "https://cutedgesystems.com/downloads/VPNEnablerForSierra.zip"
  end
  on_high_sierra :or_newer do
    version "5.2"
    sha256 :no_check

    url "https://cutedgesystems.com/downloads/VPNEnablerForHighSierra.zip"
  end

  name "VPN Enabler"
  desc "VPN settings utility"
  homepage "https://cutedgesystems.com/"

  deprecate! date: "2023-12-17", because: :discontinued

  depends_on macos: ">= :el_capitan"

  app "VPN Enabler.app"

  caveats do
    <<~EOS
      Download for newer version is walled.
    EOS
  end
end
