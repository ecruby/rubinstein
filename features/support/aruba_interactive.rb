require 'open3'

Before '@aruba_interactive' do
  @stdout_stream        = nil
  @stderr_stream        = nil
  @stdout               = ""
  @stdin                = ""

  @stdout_listener = Thread.new do
    Thread.stop
    loop do
        @stdout << @stdout_stream.readpartial(1)
    end
  end

  @stderr_listener = Thread.new do
    Thread.stop
    loop do
      @stderr << @stderr_stream.readpartial(1)
    end
  end
end

When /^I run "([^\"]*)" interactively$/ do |arg1|
  old_dir = Dir.pwd
  Dir.chdir("tmp/aruba") unless Dir.pwd.split('/')[-1] == "aruba"
  @stdin_stream, @stdout_stream, @stderr_stream = Open3.popen3(arg1)
  Dir.chdir(old_dir)
  sleep 1
  @stdout_listener.run
  @stderr_listener.run
end

When /^I type "([^\"]*)"$/ do |arg1|
  @stdin_stream.puts arg1
  sleep 0.5
end

Then /^the program should prompt "([^\"]*)"$/ do |arg1|
  sleep 0.5
  @stdout.should include(arg1)
end
