cask 'upeditor' do
  version :latest
  sha256 :no_check

  url 'https://user.95516.com/ctrl/UPEditor_2.dmg'
  name 'UPEditor plugin'
  homepage 'https://www.95516.com'

  internet_plugin 'UPEditorSafari.plugin'
end
