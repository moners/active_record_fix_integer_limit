require "active_record"
require "active_record/fix_integer_limit"

# ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: ":memory:")

class User < ActiveRecord::Base; end

ActiveRecord::Schema.define do
  create_table :users do |t|
    t.integer :magic_point
  end
end

RSpec.configure do |config|
end
