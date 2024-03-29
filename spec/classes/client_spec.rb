require 'spec_helper'

describe 'sysctl::client' do
  context 'on Ubuntu 12.04 (Precise)' do
    let(:facts) { { 
      :lsbdistcodename  => 'precise',
      :lsbdistrelease   => '12.04',
      :operatingsystem  => 'Ubuntu',
    } }

    it do
      should contain_file('/etc/sysctl.d').with({
        'ensure'  => 'directory',
        'group'   => 'root',
        'mode'    => '0644',
        'owner'   => 'root',
      })
    end

    it do
      should contain_package('procps').with_ensure('present')
    end
  end
end

# vim:sw=2:ts=2:expandtab:textwidth=79
