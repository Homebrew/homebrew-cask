cask 'wkhtmltopdf' do
  version '0.12.3'
  sha256 'c8aa0f9456444847d08c6c772e2e0e4244813e6a2911eba6c940439df9abd0f0'

  url "http://downloads.wkhtmltopdf.org/#{version.major_minor}/#{version}/wkhtmltox-#{version}_osx-cocoa-x86-64.pkg"
  name 'wkhtmltopdf'
  homepage 'https://wkhtmltopdf.org/'

  pkg "wkhtmltox-#{version}_osx-cocoa-x86-64.pkg"

  uninstall pkgutil: 'org.wkhtmltopdf.wkhtmltox',
            delete:  [
                       '/usr/local/include/wkhtmltox',
                       '/usr/local/lib/libwkhtmltox.dylib',
                       "/usr/local/lib/libwkhtmltox.#{version.major}.dylib",
                       "/usr/local/lib/libwkhtmltox.#{version.major_minor}.dylib",
                       "/usr/local/lib/libwkhtmltox.#{version.sub(%r{-.*$}, '')}.dylib",
                       '/usr/local/bin/wkhtmltoimage',
                       '/usr/local/bin/wkhtmltopdf',
                     ]

  caveats do
    files_in_usr_local
  end
end
