cask "vmware-fusion" do
  if MacOS.version <= :catalina
    livecheck_folder = "core"
    version "12.1.2,17964953"
    sha256 "873049d4080168b56085c5b67be1d4eeb14debc0e6cf176dbd52c78518d0b883"

    url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version.csv.first}-#{version.csv.second}.dmg"
  else
    livecheck_folder = "x86"
    version "12.2.4,20071091"
    sha256 "0b0516f4d5f70e759ae08a40d2e14f487c0b66d84ee467e38972ad013e1f6c7f"

    url "https://download3.vmware.com/software/FUS-#{version.csv.first.no_dots}/VMware-Fusion-#{version.csv.first}-#{version.csv.second}_x86.dmg"
  end

  name "VMware Fusion"
  desc "Create, manage, and run virtual machines"
  homepage "https://www.vmware.com/products/fusion.html"

  livecheck do
    url "https://softwareupdate.vmware.com/cds/vmw-desktop/fusion.xml"
    regex(%r{fusion/(\d+(?:\.\d+)+)/(\d+)/#{livecheck_folder}}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true
  conflicts_with cask: "vmware-fusion-tech-preview"
  depends_on macos: ">= :catalina"

  app "VMware Fusion.app"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/VMware OVF Tool/ovftool"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vkd/bin/vctl"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmnet-bridge"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmnet-cfgcli"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmnet-cli"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmnet-dhcpd"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmnet-natd"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmnet-netifup"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmnet-sniffer"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmrest"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmrun"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmss2core"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-aewp"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-authd"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-cloneBootCamp"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-id"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-ntfs"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-rawdiskAuthTool"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-rawdiskCreator"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-remotemks"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-usbarbitrator"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-vdiskmanager"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-vmdkserver"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-vmx"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-vmx-debug"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-vmx-stats"

  postflight do
    system_command "#{appdir}/VMware Fusion.app/Contents/Library/Initialize VMware Fusion.tool",
                   args: ["set"],
                   sudo: true
  end

  uninstall_preflight do
    set_ownership "#{appdir}/VMware Fusion.app"
  end

  uninstall delete: "/etc/paths.d/com.vmware.fusion.public"

  zap trash: [
    "/Library/Application Support/VMware",
    "/Library/Logs/VMware Fusion Services.log",
    "/Library/Logs/VMware USB Arbitrator Service.log",
    "/Library/Logs/VMware",
    "/Library/Preferences/VMware Fusion",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vmware.fusion.sfl*",
    "~/Library/Application Support/VMware Fusion",
    "~/Library/Application Support/VMware Fusion Applications Menu",
    "~/Library/Caches/com.vmware.fusion",
    "~/Library/Logs/VMware Fusion",
    "~/Library/Logs/VMware Fusion Applications Menu",
    "~/Library/Logs/VMware Graphics Service.log",
    "~/Library/Logs/VMware",
    "~/Library/Preferences/VMware Fusion",
    "~/Library/Preferences/com.vmware.fusion.plist",
    "~/Library/Preferences/com.vmware.fusion.plist.lockfile",
    "~/Library/Preferences/com.vmware.fusionApplicationsMenu.plist",
    "~/Library/Preferences/com.vmware.fusionApplicationsMenu.helper.plist",
    "~/Library/Preferences/com.vmware.fusionDaemon.plist",
    "~/Library/Preferences/com.vmware.fusionDaemon.plist.lockfile",
    "~/Library/Preferences/com.vmware.fusionStartMenu.plist",
    "~/Library/Preferences/com.vmware.fusionStartMenu.plist.lockfile",
    "~/Library/Preferences/com.vmware.fusion.LSSharedFileList.plist",
    "~/Library/Preferences/com.vmware.fusion.LSSharedFileList.plist.lockfile",
    "~/Library/Saved Application State/com.vmware.fusion.savedState",
    "~/Library/WebKit/com.vmware.fusion",
  ]

  caveats do
    kext if MacOS.version == :catalina
  end
end
