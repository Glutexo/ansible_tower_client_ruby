describe AnsibleTowerClient::HashModel do
  context '.initialize' do
    it 'should have accessors only for existing attributes' do
      model = described_class.new(foo: 'foo')
      expect(model).to respond_to(:foo)
      expect(model).not_to respond_to(:bar)
    end

    it 'should not have accessors from previous instances' do
      described_class.new(bar: 'bar')

      model = described_class.new(foo: 'foo')
      expect(model).not_to respond_to(:bar)
    end
  end
end
