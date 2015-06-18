cask :v1 => 'upeditor' do
  version :latest
  sha256 :no_check

  url 'https://user.95516.com/ctrl/UPEditor_2.dmg'
  name 'UPEditor plugin'
  homepage 'https://www.95516.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  internet_plugin 'UPEditorSafari.plugin'
end
