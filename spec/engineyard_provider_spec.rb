require 'spec_helper'

describe 'EngineyardProvider' do
  it 'should import the projects' do
    ey = EngineyardProvider.new
    ey.token_login('a5b89f54a2180e6276fe28bcabc17490')
    ey.import
  end
end