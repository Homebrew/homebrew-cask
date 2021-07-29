cask "virtualbox-extension-pack" do
  version "6.1.26"
  sha256 "aaa1a1f8615d5bd2e08b158ce6f415262fbb595e169e2d415c5b1844ac258eee"

  url "https://download.virtualbox.org/virtualbox/#{version}/Oracle_VM_VirtualBox_Extension_Pack-#{version}.vbox-extpack"
  name "Oracle VirtualBox Extension Pack"
  desc "AMD64/Intel64 and x86 virtualization"
  homepage "https://www.virtualbox.org/"

  livecheck do
    url "https://download.virtualbox.org/virtualbox/LATEST.TXT"
    strategy :page_match
    regex(/\d+\.\d+\.\d+/)
  end

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
