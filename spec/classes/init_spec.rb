require 'spec_helper'
describe 'strider' do
  context 'with default values for all parameters' do
    it { should contain_class('strider') }
  end
end
