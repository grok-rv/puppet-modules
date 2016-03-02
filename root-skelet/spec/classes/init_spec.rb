require 'spec_helper'
describe 'skelet' do

  context 'with defaults for all parameters' do
    it { should contain_class('skelet') }
  end
end
