cask 'vmware-remote-console' do
  version '10.0.1-5898794'
  sha256 '4eaed6c0b192e6658d0d03999b9d25c1d527866d00e94b8d684a9ec8e1dbd6d6'

  url "https://softwareupdate.vmware.com/cds/vmw-desktop/vmrc/#{version.hyphens_to_slashes}/macos/com.vmware.vmrc.zip.tar"
  appcast 'https://softwareupdate.vmware.com/cds/vmw-desktop/vmrc-macos.xml',
          checkpoint: 'b400380bbcfc3e5fecac84d28a02e592d96af0b3ab1ab1574a77d4ab10a00e25'
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
