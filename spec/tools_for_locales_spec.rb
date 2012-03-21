# encoding: utf-8

require 'tools_for_locales'
require 'yaml'

describe ToolsForLocales do

  include ToolsForLocales

  it 'should sort by key a simple hash' do
    a = { this: 1, is: 2, very: 3, simple: 4 }
    sorted = { is: 2, simple: 4, this: 1, very: 3 }
    sort_hash(a).should be_eql(sorted)
  end

  it 'should sort by key a hash with hashes' do
    hash_1 = { this: 1, is: 2, very: 3, simple: 4 }
    a = { this: hash_1, is: 2, very: hash_1, simple: 4 }
    sorted = { is: 2, simple: 4, this: 1, very: 3 }
    result = { is: 2, simple: 4, this: sorted, very: sorted }
    sort_hash(a).should be_eql(result)
  end

  it 'should return self given a sorted hash' do
    sorted = { is: 2, simple: 4, this: 1, very: 3 }
    sort_hash(sorted).should be_eql(sorted)
  end

end
