cask :v1 => 'tagspaces' do
  version '1.11.0'

  if Hardware::CPU.is_32_bit?
    sha256 '82d9c04769f4946cd28c8a4b63e3ccfe0645dd3e414223902c52700a64581667'
    url "http://www.tagspaces.org/downloads/tagspaces-#{version}-osx32.zip"
  else
    sha256 'f1dde7967d34504b155be8677087c3b586ef17c010386458df68598cdf38fe86'
    url "http://www.tagspaces.org/downloads/tagspaces-#{version}-osx64.zip"
    appcast 'https://github.com/uggrock/tagspaces/releases.atom'
  end

  name 'TagSpaces'
  homepage 'http://www.tagspaces.org'
  license :affero

  app 'TagSpaces.app'
end
