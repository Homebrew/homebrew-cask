cask 'x2goclient' do
    version '4.1.1.0'

    if MacOS.version <= :mavericks
        sha256 '0502fb19866824d4df6c7f75623f07a74202cb13143f6041df30457453f9100e'
        url "https://code.x2go.org/releases/binary-macosx/x2goclient/releases/#{version}/x2goclient-#{version}.20171029_OSX_10_9.dmg"
        elsif MacOS.version == :yosemite || MacOS.version == :el_capitan
        sha256 'daa29f7cb697ce04e70ee0401978e2318ff979d97cb0035f12dce4dc061a57c1'
        url "https://code.x2go.org/releases/binary-macosx/x2goclient/releases/#{version}/x2goclient-#{version}.20171029.OSX_10_10.dmg"
        elsif MacOS.version == :sierra
        sha256 '4b35b9002f5a328c98dab213abade2d5a176c6c74efaead9e54987e408a290dd'
        url "https://code.x2go.org/releases/binary-macosx/x2goclient/releases/#{version}/x2goclient-#{version}.20171029.OSX_10_12.dmg"
    end

    name 'X2Go Client'
    homepage 'https://wiki.x2go.org/doku.php'

    depends_on cask: 'xquartz'

    app 'x2goclient.app'

    uninstall delete: '/Applications/x2goclient.app'

    zap trash: [
    '~/Library/Preferences/x2goclient.plist',
    ]
end
