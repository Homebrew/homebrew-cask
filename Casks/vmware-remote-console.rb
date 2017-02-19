cask 'vmware-remote-console' do
  version '9.0.0-4288332'
  sha256 'b3adb7f0b2c19f98765710a0c6902f7d3d32ebf7e908886d4d6f687c4f8f6b2b'

  url "https://softwareupdate.vmware.com/cds/vmw-desktop/vmrc/#{version.hyphens_to_slashes}/macos/com.vmware.vmrc.zip.tar"
  appcast 'https://softwareupdate.vmware.com/cds/vmw-desktop/vmrc-macos.xml',
          checkpoint: 'c2fcc80625919e460063b48a9fd6f93eb155f3b91b4f71050a492cdc465e6dbb'
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

  zap delete: '/Library/Logs/VMRC Services.log'
end
