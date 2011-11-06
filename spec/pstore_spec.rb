require 'helper'
require 'adapter/pstore'

describe "PStore adapter" do
  before do
    @client = PStore.new('test.pstore')
    @adapter = Adapter[:pstore].new(@client)
    @adapter.clear
  end

  let(:adapter) { @adapter }
  let(:client)  { @client }

  it_should_behave_like 'a marshaled adapter'

end