cask :v1 => 'tagspaces' do

  version '1.9.0'

  if Hardware::CPU.is_32_bit?
    sha256 'ca127150d07d45b7b77beefe32df22441504c4de070468996372aed523341264'

    url "https://github.com/uggrock/tagspaces/releases/download/#{version}/tagspaces-#{version}-osx32.zip"
  else
    sha256 '42f115adb5ea7eb687c5b5b07d8843e895a8ed492a46800120e46f1c1f450aa2'

    url "https://github.com/uggrock/tagspaces/releases/download/#{version}/tagspaces-#{version}-osx64.zip"
  end

  homepage 'http://www.tagspaces.org'
  license :affero

  app 'TagSpaces.app'
end
