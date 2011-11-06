require 'adapter'
require 'pstore'

module Adapter
  module PStore
    def key?(key)
      client.transaction(true) do
        client.root?(key_for(key))
      end
    end
    def read(key)
      client.transaction(true) do
        client[key_for(key)]
      end
    end
    def write(key, value)
      client.transaction(false) do
        client[key_for(key)] = value
      end
    end
    def delete(key)
      client.transaction(false) do
        client.delete(key_for(key))
      end
    end
    def clear
      client.transaction(false) do
        client.roots.each do |root|
          client.delete(root)
        end
      end
    end
  end
end

Adapter.define(:pstore, Adapter::PStore)