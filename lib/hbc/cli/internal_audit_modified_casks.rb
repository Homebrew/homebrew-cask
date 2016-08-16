class Hbc::CLI::InternalAuditModifiedCasks < Hbc::CLI::InternalUseBase
  RELEVANT_STANZAS = %i{version sha256 url appcast}.freeze

  class << self
    def needs_init?
      true
    end

    def run(*args)
      commit_range = commit_range(args)
      cleanup = args.any? { |a| a =~ %r{^-+c(leanup)?$}i }
      new(commit_range, cleanup: cleanup).run
    end

    def commit_range(args)
      posargs = args.reject { |a| a.empty? || a.chars.first == "-" }
      odie usage unless posargs.size == 1
      posargs.first
    end

    def posargs(args)
      args.reject { |a| a.empty? || a.chars.first == "-" }
    end

    def usage
      <<-EOS.undent
        Usage: brew cask _audit_modified_casks [options...] <commit range>

        Given a range of Git commits, find any Casks that were modified and run `brew
        cask audit' on them. If the `url', `version', or `sha256' stanzas were modified,
        run with the `--download' flag to verify the hash.

        Options:
          -c, --cleanup
            Remove all cached downloads. Use with care.
      EOS
    end
  end

  def initialize(commit_range, cleanup: false)
    @commit_range = commit_range
    @cleanup = cleanup
  end

  attr_reader :commit_range

  def cleanup?
    @cleanup
  end

  def run
    at_exit do
      cleanup
    end

    Dir.chdir git_root do
      modified_cask_files.zip(modified_casks).each do |cask_file, cask|
        audit(cask, cask_file)
      end
    end
    report_failures
  end

  def git_root
    @git_root ||= git(*%w[rev-parse --show-toplevel])
  end

  def modified_cask_files
    @modified_cask_files ||= git_filter_cask_files("AM")
  end

  def added_cask_files
    @added_cask_files ||= git_filter_cask_files("A")
  end

  def git_filter_cask_files(filter)
    git("diff", "--name-only", "--diff-filter=#{filter}", commit_range,
        "--", Pathname.new(git_root).join("Casks", "*.rb").to_s).split("\n")
  end

  def modified_casks
    return @modified_casks if defined? @modified_casks
    @modified_casks = modified_cask_files.map { |f| Hbc.load(f) }
    if @modified_casks.any?
      num_modified = @modified_casks.size
      ohai "#{num_modified} modified #{pluralize('cask', num_modified)}: " \
        "#{@modified_casks.join(' ')}"
    end
    @modified_casks
  end

  def audit(cask, cask_file)
    audit_download = audit_download?(cask, cask_file)
    check_token_conflicts = added_cask_files.include?(cask_file)
    success = Hbc::Auditor.audit(cask, audit_download:        audit_download,
                                       check_token_conflicts: check_token_conflicts)
    failed_casks << cask unless success
  end

  def failed_casks
    @failed_casks ||= []
  end

  def audit_download?(cask, cask_file)
    cask.sha256 != :no_check && relevant_stanza_modified?(cask_file)
  end

  def relevant_stanza_modified?(cask_file)
    out = git("diff", commit_range, "--", cask_file)
    out =~ %r{^\+\s*(#{RELEVANT_STANZAS.join('|')})}
  end

  def git(*args)
    odebug ["git", *args].join(" ")
    out, err, status = Open3.capture3("git", *args)
    return out.chomp if status.success?
    odie err.chomp
  end

  def report_failures
    return if failed_casks.empty?
    num_failed = failed_casks.size
    cask_pluralized = pluralize("cask", num_failed)
    odie "audit failed for #{num_failed} #{cask_pluralized}: " \
      "#{failed_casks.join(' ')}"
  end

  def pluralize(str, num)
    num == 1 ?  str : "#{str}s"
  end

  def cleanup
    Hbc::CLI::Cleanup.run if cleanup?
  end
end
