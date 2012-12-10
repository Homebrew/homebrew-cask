class Cask::Auditor
  attr :f
  attr :text
  attr :problems, true
  
  def initialize f
    @f = f
    @problems = []
    @text = IO.read f.path
  end

  def audit_file
    unless f.path.stat.mode.to_s(8) == "100644"
      problem "Incorrect file permissions: chmod 644 #{f.path}"
    end

    if /.+\z/ =~ text
      problem "File should end with a newline"
    end
  end

  def audit_urls
    unless f.homepage =~ %r[^https?://]
      problem "The homepage should start with http or https."
    end

    # Google Code homepages should end in a slash
    if f.homepage =~ %r[^https?://code\.google\.com/p/[^/]+[^/]$]
      problem "Google Code homepage should end with a slash."
    end

    urls = [(f.stable.url rescue nil), (f.devel.url rescue nil), (f.edge.url rescue nil)].compact
    
    # Check GNU urls; doesn't apply to mirrors
    if urls.any? { |p| p =~ %r[^(https?|ftp)://(.+)/gnu/] }
      problem "\"ftpmirror.gnu.org\" is preferred for GNU software."
    end

    # the rest of the checks apply to mirrors as well
    urls.concat([(f.stable.mirrors rescue nil), (f.devel.mirrors rescue nil)].flatten.compact)
    
    # Check protocols
    protos = []
    urls.each { |p|
      protos << p.split(":")[0] unless p =~ %r[^(https?|ftp)://]
    }
    if protos.any?
      problem "These protocols are not supported: '#{protos.join("', '")}'."
    end
    
    # Check SourceForge urls
    urls.each do |p|
      # Is it a filedownload (instead of svnroot)
      next if p =~ %r[/svnroot/]
      next if p =~ %r[svn\.sourceforge]

      # Is it a sourceforge http(s) URL?
      next unless p =~ %r[^https?://.*\bsourceforge\.]

      if p =~ /(\?|&)use_mirror=/
        problem "Update this url (don't use #{$1}use_mirror)."
      end

      if p =~ /\/download$/
        problem "Update this url (don't use /download)."
      end

      if p =~ %r[^http://prdownloads\.]
        problem "Update this url (don't use prdownloads). See:\nhttp://librelist.com/browser/homebrew/2011/1/12/prdownloads-is-bad/"
      end

      if p =~ %r[^http://\w+\.dl\.]
        problem "Update this url (don't use specific dl mirrors)."
      end
    end
  end
  
  def audit_specs
    problem "Edge-only (no stable download)" if f.stable.nil? and f.devel.nil? and f.edge and !Cask.audit_ignore_edge

    [:stable, :devel].each do |spec|
      s = f.send(spec)
      next if s.nil?

      if s.version.to_s.empty?
        problem "Invalid or missing #{spec} version"
      else
        version_text = s.version unless s.version.detected_from_url?
        version_url = Version.parse(s.url)
        if version_url.to_s == version_text.to_s
          problem "#{spec} version #{version_text} is redundant with version scanned from URL"
        end
      end

      cksum = s.checksum
      next if cksum.nil?

      len = case cksum.hash_type
        when :md5 then 32
        when :sha1 then 40
        when :sha256 then 64
        end

      problem "md5 is broken, deprecated: use sha1 instead" if cksum.hash_type == :md5

      if cksum.empty?
        problem "#{cksum.hash_type} is empty"
      else
        problem "#{cksum.hash_type} should be #{len} characters" unless cksum.hexdigest.length == len
        problem "#{cksum.hash_type} contains invalid characters" unless cksum.hexdigest =~ /^[a-fA-F0-9]+$/
        problem "#{cksum.hash_type} should be lowercase" unless cksum.hexdigest == cksum.hexdigest.downcase
      end
    end
  end

  def audit_text
    if text =~ /<(Formula|AmazonWebServicesFormula|ScriptFileFormula|GithubGistFormula)/
      problem "Use a space in class inheritance: class Foo < #{$1}"
    end

    # FileUtils is included in Formula
    if text =~ /FileUtils\.(\w+)/
      problem "Don't need 'FileUtils.' before #{$1}."
    end

    # Check for string interpolation of single values.
    if text =~ /(system|gsub!) .* ['"]#\{(\w+(\.\w+)?)\}['"]/
      problem "Don't need to interpolate \"#{$2}\" with #{$1}"
    end

    # Check for string concatenation; prefer interpolation
    if text =~ /(#\{\w+\s*\+\s*['"][^}]+\})/
      problem "Try not to concatenate paths in string interpolation:\n #{$1}"
    end

    # Prefer formula path shortcuts in Pathname+
    if text =~ %r{\(\s*(prefix\s*\+\s*(['"])(applications|share)[/'"])}
      problem "\"(#{$1}...#{$2})\" should be \"(#{$3}+...)\""
    end

    if text =~ %r[((man)\s*\+\s*(['"])(man[1-8])(['"]))]
      problem "\"#{$1}\" should be \"#{$4}\""
    end

    # Prefer formula path shortcuts in strings
    if text =~ %r[(\#\{prefix\}/(applications|share))]
      problem "\"#{$1}\" should be \"\#{#{$2}}\""
    end

    if text =~ %r[((\#\{prefix\}/share/man/|\#\{man\}/)(man[1-8]))]
      problem "\"#{$1}\" should be \"\#{#{$3}}\""
    end

    if text =~ %r[((\#\{share\}/(man)))[/'"]]
      problem "\"#{$1}\" should be \"\#{#{$3}}\""
    end

    if text =~ %r[(\#\{prefix\}/share/(info|man))]
      problem "\"#{$1}\" should be \"\#{#{$2}}\""
    end

    # No trailing whitespace, please
    if text =~ /(\t|[ ])+$/
      problem "Trailing whitespace was found"
    end

    if text =~ /if\s+ARGV\.include\?\s+'--(HEAD|devel)'/
      problem "Use \"if ARGV.build_#{$1.downcase}?\" instead"
    end

    if text =~ /^[ ]*\t/
      problem "Use spaces instead of tabs for indentation"
    end

    if text =~ /system\s+['"](env|export)/
      problem "Use ENV instead of invoking '#{$1}' to modify the environment"
    end

    if text =~ /version == ['"]HEAD['"]/
      problem "Use 'build.head?' instead of inspecting 'version'"
    end

    if text =~ /build\.include\?\s+['"]\-\-(.*)['"]/
      problem "Reference '#{$1}' without dashes"
    end

    if text =~ /ARGV\.(?!(debug|verbose|find)\?)/
      problem "Use build instead of ARGV to check options"
    end

    if text =~ /def options/
      problem "Use new-style option definitions"
    end

    if text =~ /MACOS_VERSION/
      problem "Use MacOS.version instead of MACOS_VERSION"
    end

    if text =~ /(MacOS.((snow_)?leopard|leopard|(mountain_)?lion)\?)/
      problem "#{$1} is deprecated, use a comparison to MacOS.version instead"
    end

    if text =~ /skip_clean\s+:all/
      problem "`skip_clean :all` is deprecated; brew no longer strips symbols"
    end
  end

  def audit
    audit_file
    audit_specs
    audit_urls
    audit_text
  end

  private

  def problem p
    @problems << p
  end
end