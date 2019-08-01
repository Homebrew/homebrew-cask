cask 'vmware-remote-console' do
  version '10.0.5,14161502'
  sha256 '6a9294034785c466374f3408bf781e45acb878750a5c17d12671cac1def14f13'

  url "https://softwareupdate.vmware.com/cds/vmw-desktop/vmrc/#{version.before_comma}/#{version.after_comma}/macos/com.vmware.vmrc.zip.tar"
  appcast 'https://softwareupdate.vmware.com/cds/vmw-desktop/vmrc-macos.xml'
  name 'VMware Remote Console for Mac'
  homepage 'https://www.vmware.com/support/pubs/vmrc_pubs.html'

  auto_updates true
  container nested: 'com.vmware.vmrc.zip'

  app 'payload/VMware Remote Console.app'

  postflight do
    system_command "#{appdir}/VMware Remote Console.app/Contents/Library/Initialize VMRC.tool",
                   args: ['set'],
                   sudo: true
  end

  uninstall_preflight do
    set_ownership "#{appdir}/VMware Remote Console.app"
  end

  uninstall quit: 'com.vmware.vmrc'

  zap trash: '/Library/Logs/VMRC Services.log'
end
