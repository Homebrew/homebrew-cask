cask :v1 => 'upeditor' do
  version '1.0.0.2'
  sha256 '5589672fabb8f8fa6320f56bb53b333e5adbda0d9bebd8460184208c4d490ee0'

  url "https://user.95516.com/ctrl/UPEditor_#{version.sub(%r{(\d+)\.(\d+)\.(\d+)\.(\d+)},'\4')}.dmg"
  homepage 'https://www.95516.com'
  license :unknown

  internet_plugin 'UPEditorSafari.plugin'
end
