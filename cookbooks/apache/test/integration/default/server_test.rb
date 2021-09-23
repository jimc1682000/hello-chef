# InSpec test for recipe apache::server

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe port(80) do
  it { should be_listening }
  its('protocols') { should include 'tcp' }
end

describe command('curl localhost') do
  its(:stdout) { should match(/Hello World! Hi Jimmy Chen!/) }
end
