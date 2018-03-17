cask 'virtualbox' do
  version '5.2.8,121009'
  sha256 '97764ad37c5fafdeccecfb660ce056f625e9048890af772befe0330ed2def1d8'

  url "https://download.virtualbox.org/virtualbox/#{version.before_comma}/VirtualBox-#{version.before_comma}-#{version.after_comma}-OSX.dmg"
  appcast 'https://download.virtualbox.org/virtualbox/LATEST.TXT',
          checkpoint: '96cbba0b6bc9a09d588b1a2de0a078ffcb35a31827e7ff1aaa9817df42caac88'
  name 'Oracle VirtualBox'
  homepage 'https://www.virtualbox.org/'

  pkg 'VirtualBox.pkg'

  uninstall_preflight do
    def get_process_list_array(filter = nil)
      psaux = system_command('/usr/bin/env', args: ['ps', 'aux'], sudo: true).stdout.split("\n")
      filter.nil? ? psaux : psaux.select { |line| line.match(filter) }
    end

    vbox_users = get_process_list_array('VirtualBoxVM').map { |process| process.split("\s")[0] }.uniq
    running_vms_full_list = vbox_users.map { |user| system_command '/usr/bin/env', args: ['su', user.to_s, '/usr/local/bin/VBoxManage', 'list', 'runningvms'], sudo: true }.map { |vboxmanage| vboxmanage.stdout.split("\n") }
    running_vms_guids_only = running_vms_full_list.map { |vmlist| vmlist.map { |vmlistitem| vmlistitem.match(%r{\{[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}\}})[0] } }
    Hash[vbox_users.zip running_vms_guids_only].each { |user, vmlist| vmlist.each { |vm| system_command '/usr/bin/env', args: ['su', user.to_s, '/usr/local/bin/VBoxManage', 'controlvm', vm.to_s, 'savestate'], sudo: true, must_succeed: true, print_stdout: true } }

    vbox_app_process_list = get_process_list_array('VirtualBox.app/Contents/MacOS/VirtualBox').map { |process| process.split("\s")[1] }.uniq
    vbox_app_process_list.each { |process| system_command '/usr/bin/env', args: ['kill', '-HUP', process.to_s], sudo: true, must_succeed: true }

    10.times do
      break if get_process_list_array('VirtualBox.app').count.zero?
      sleep 1
    end
    get_process_list_array('VirtualBox.app').map { |process| process.split("\s")[1] }.each { |process_id| system_command '/usr/bin/env', args: ['kill', '-9', process_id.to_s], sudo: true, must_succeed: true }
  end

  uninstall script:  {
                       executable: 'VirtualBox_Uninstall.tool',
                       args:       ['--unattended'],
                       sudo:       true,
                     },
            pkgutil: 'org.virtualbox.pkg.*'

  zap trash: [
               '/Library/Application Support/VirtualBox',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.virtualbox.app.virtualbox.sfl*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.virtualbox.app.virtualboxvm.sfl*',
               '~/Library/VirtualBox',
               '~/Library/Preferences/org.virtualbox.app.VirtualBox.plist',
               '~/Library/Preferences/org.virtualbox.app.VirtualBoxVM.plist',
               '~/Library/Saved Application State/org.virtualbox.app.VirtualBox.savedState',
               '~/Library/Saved Application State/org.virtualbox.app.VirtualBoxVM.savedState',
             ],
      rmdir: '~/VirtualBox VMs'

  caveats do
    kext
  end
end
