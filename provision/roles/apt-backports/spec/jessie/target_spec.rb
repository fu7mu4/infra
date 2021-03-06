require 'spec_helper'

describe file('/etc/apt/sources.list.d/backports.list') do
  it { should contain 'deb http://ftp.debian.org/debian jessie-backports main' }
end
describe file('/etc/apt/apt.conf.d/99target') do
  it { should exist }
  it { should be_file }
  it { should contain 'APT::Default-Release jessie-backports;' }
end
