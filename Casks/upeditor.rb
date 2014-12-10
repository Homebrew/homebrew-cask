cask :v1 => 'upeditor' do
  version :latest
  sha256 :no_check

  url 'https://user.95516.com/ctrl/UPEditor_2.dmg'
  homepage 'https://www.95516.com'
  license :unknown    # todo: improve this machine-generated value

  internet_plugin 'UPEditorSafari.plugin'
end
