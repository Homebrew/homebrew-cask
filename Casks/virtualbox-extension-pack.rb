cask "virtualbox-extension-pack" do
  version "6.1.16"
  sha256 "9802482b77b95a954cb5111793da10d009009a4e9a9c4eaa4bd1ae5dafe9db46"

  url "https://download.virtualbox.org/virtualbox/#{version}/Oracle_VM_VirtualBox_Extension_Pack-#{version}.vbox-extpack"
  appcast "https://download.virtualbox.org/virtualbox/LATEST.TXT"
  name "Oracle VirtualBox Extension Pack"
  desc "AMD64/Intel64 and x86 virtualization"
  homepage "https://www.virtualbox.org/"

  conflicts_with cask: "virtualbox-extension-pack-beta"
  depends_on cask: "virtualbox"
  container type: :naked

  stage_only true

  postflight do
    system_command "/usr/local/bin/VBoxManage",
                   args:  [
                     "extpack", "install",
                     "--replace", "#{staged_path}/Oracle_VM_VirtualBox_Extension_Pack-#{version}.vbox-extpack"
                   ],
                   input: "y",
                   sudo:  true
  end

  uninstall_postflight do
    next unless File.exist?("/usr/local/bin/VBoxManage")

    system_command "/usr/local/bin/VBoxManage",
                   args: [
                     "extpack", "uninstall",
                     "Oracle VM VirtualBox Extension Pack"
                   ],
                   sudo: true
  end

  caveats do
    license "https://www.virtualbox.org/wiki/VirtualBox_PUEL"
  end
end
