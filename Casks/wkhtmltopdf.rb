cask 'wkhtmltopdf' do
  version '0.12.5'
  sha256 '2718c057249a133fe413b3c8cfb33b755a2e18a8e233329168f1af462cd6de5f'

  # github.com/wkhtmltopdf/wkhtmltopdf/ was verified as official when first introduced to the cask
  url "https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/#{version}/wkhtmltox-#{version}-1.macos-cocoa.pkg"
  appcast 'https://github.com/wkhtmltopdf/wkhtmltopdf/releases.atom'
  name 'wkhtmltopdf'
  homepage 'https://wkhtmltopdf.org/'

  pkg "wkhtmltox-#{version}-1.macos-cocoa.pkg"

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
