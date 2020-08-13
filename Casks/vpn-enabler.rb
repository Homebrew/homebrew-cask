cask "vpn-enabler" do
  if MacOS.version <= :el_capitan
    version "3.0.6"
    sha256 "fae22c4e3b05c77d3658b45c92398c3a6f7fa7792bc124e1b463efb662519536"
    url "https://cutedgesystems.com/downloads/VPNEnablerForElCapitan.zip"
  elsif MacOS.version <= :sierra
    version "4.0"
    sha256 "50e22bcc2e341adff7fc625714c251ac0ac889cfb55983e026cff8478ebd3793"
    url "https://cutedgesystems.com/downloads/VPNEnablerForSierra.zip"
  else
    version "5.2"
    sha256 "6c01122328280859007eb1f21cd6878600037a966612fc2c3cb0f7192c035175"
    url "https://cutedgesystems.com/downloads/VPNEnablerForHighSierra.zip"
  end

  name "VPN Enabler"
  homepage "https://cutedgesystems.com/"

  depends_on macos: ">= :el_capitan"

  app "VPN Enabler.app"
end
