require "open3"
require "shellwords"

class Hbc::SystemCommand
  attr_reader :command

  def self.run(executable, options = {})
    new(executable, options).run!
  end

  def self.run!(command, options = {})
    run(command, options.merge(must_succeed: true))
  end

  def run!
    @processed_output = { stdout: "", stderr: "" }
    odebug "Executing: #{expanded_command.utf8_inspect}"

    each_output_line do |type, line|
      case type
      when :stdout
        processed_output[:stdout] << line
        ohai line.chomp if options[:print_stdout]
      when :stderr
        processed_output[:stderr] << line
        ohai line.chomp if options[:print_stderr]
      end
    end

    assert_success if options[:must_succeed]
    result
  end

  def initialize(executable, options)
    @executable = executable
    @options = options
    process_options!
  end

  private

  attr_reader :executable, :options, :processed_output, :processed_status

  def process_options!
    options.assert_valid_keys :input, :print_stdout, :print_stderr, :args, :must_succeed, :sudo, :bsexec
    sudo_prefix = %w[/usr/bin/sudo -E --]
    bsexec_prefix = ["/bin/launchctl", "bsexec", options[:bsexec] == :startup ? "/" : options[:bsexec]]
    @command = [executable]
    options[:print_stderr] = true    unless options.key?(:print_stderr)
    @command.unshift(*bsexec_prefix) if  options[:bsexec]
    @command.unshift(*sudo_prefix)   if  options[:sudo]
    @command.concat(options[:args])  if  options.key?(:args) && !options[:args].empty?
    @command[0] = Shellwords.shellescape(@command[0]) if @command.size == 1
    nil
  end

  def assert_success
    return if processed_status && processed_status.success?
    raise Hbc::CaskCommandFailedError.new(command.utf8_inspect, processed_output[:stdout], processed_output[:stderr], processed_status)
  end

  def expanded_command
    @expanded_command ||= command.map { |arg|
      if arg.respond_to?(:to_path)
        File.absolute_path(arg)
      else
        String(arg)
      end
    }
  end

  def each_output_line(&b)
    raw_stdin, raw_stdout, raw_stderr, raw_wait_thr =
      Open3.popen3(*expanded_command)

    write_input_to(raw_stdin) if options[:input]
    raw_stdin.close_write
    each_line_from [raw_stdout, raw_stderr], &b

    @processed_status = raw_wait_thr.value
  end

  def write_input_to(raw_stdin)
    Array(options[:input]).each { |line| raw_stdin.puts line }
  end

  def each_line_from(sources)
    loop do
      readable_sources = IO.select(sources)[0]
      readable_sources.delete_if(&:eof?).first(1).each do |source|
        type = (source == sources[0] ? :stdout : :stderr)
        begin
          yield(type, source.readline_nonblock || "")
        rescue IO::WaitReadable, EOFError
          next
        end
      end
      break if readable_sources.empty?
    end
    sources.each(&:close_read)
  end

  def result
    Hbc::SystemCommand::Result.new(command,
                                   processed_output[:stdout],
                                   processed_output[:stderr],
                                   processed_status.exitstatus)
  end
end

class Hbc::SystemCommand::Result
  attr_accessor :command, :stdout, :stderr, :exit_status

  def initialize(command, stdout, stderr, exit_status)
    @command     = command
    @stdout      = stdout
    @stderr      = stderr
    @exit_status = exit_status
  end

  def plist
    @plist ||= self.class._parse_plist(@command, @stdout.dup)
  end

  def success?
    @exit_status == 0
  end

  def merged_output
    @merged_output ||= @stdout + @stderr
  end

  def to_s
    @stdout
  end

  def self._warn_plist_garbage(command, garbage)
    return true unless garbage =~ %r{\S}
    external = File.basename(command.first)
    lines = garbage.strip.split("\n")
    opoo "Non-XML stdout from #{external}:"
    $stderr.puts lines.map { |l| "    #{l}" }
  end

  def self._parse_plist(command, output)
    raise Hbc::CaskError, "Empty plist input" unless output =~ %r{\S}
    output.sub!(%r{\A(.*?)(<\?\s*xml)}m, '\2')
    _warn_plist_garbage(command, Regexp.last_match[1]) if Hbc.debug
    output.sub!(%r{(<\s*/\s*plist\s*>)(.*?)\Z}m, '\1')
    _warn_plist_garbage(command, Regexp.last_match[2])
    xml = Plist.parse_xml(output)
    unless xml.respond_to?(:keys) && !xml.keys.empty?
      raise Hbc::CaskError, <<-ERRMSG
Empty result parsing plist output from command.
  command was:
  #{command.utf8_inspect}
  output we attempted to parse:
  #{output}
      ERRMSG
    end
    xml
  rescue Plist::ParseError => e
    raise Hbc::CaskError, <<-ERRMSG
Error parsing plist output from command.
  command was:
  #{command.utf8_inspect}
  error was:
  #{e}
  output we attempted to parse:
  #{output}
    ERRMSG
  end
end
