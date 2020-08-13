cask "wkhtmltopdf" do
  version "0.12.6-2"
  sha256 "81a66b77b508fede8dbcaa67127203748376568b3673a17f6611b6d51e9894f8"

  # github.com/wkhtmltopdf/packaging/ was verified as official when first introduced to the cask
  url "https://github.com/wkhtmltopdf/packaging/releases/download/#{version}/wkhtmltox-#{version}.macos-cocoa.pkg"
  appcast "https://github.com/wkhtmltopdf/packaging/releases.atom"
  name "wkhtmltopdf"
  homepage "https://wkhtmltopdf.org/"

  pkg "wkhtmltox-#{version}.macos-cocoa.pkg"

  uninstall pkgutil: "org.wkhtmltopdf.wkhtmltox",
            delete:  [
              "/usr/local/include/wkhtmltox",
              "/usr/local/lib/libwkhtmltox.dylib",
              "/usr/local/lib/libwkhtmltox.#{version.major}.dylib",
              "/usr/local/lib/libwkhtmltox.#{version.major_minor}.dylib",
              "/usr/local/lib/libwkhtmltox.#{version.sub(/-.*$/, "")}.dylib",
              "/usr/local/bin/wkhtmltoimage",
              "/usr/local/bin/wkhtmltopdf",
            ]

  caveats do
    files_in_usr_local
  end
end
