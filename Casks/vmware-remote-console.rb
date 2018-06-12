cask 'vmware-remote-console' do
  version '10.0.2-7096020'
  sha256 '05ace74277fcb570a7da6612fafb6aca6b95da54cfe07ea131ec83e3af8292b9'

  url "https://softwareupdate.vmware.com/cds/vmw-desktop/vmrc/#{version.hyphens_to_slashes}/macos/com.vmware.vmrc.zip.tar"
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
