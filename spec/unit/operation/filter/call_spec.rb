# coding: utf-8

require 'spec_helper'

RSpec.describe TTY::Table::Operation::Filter, '#call' do
  let(:object) { described_class }
  let(:field)  { TTY::Table::Field.new('a1') }
  let(:filter) { Proc.new { |val, row, col| 'new' } }
  let(:value)  { 'new' }

  subject { object.new(filter) }

  it 'changes field value' do
    subject.call(field, 0, 0)
    expect(field.content).to eql(value)
  end
end
