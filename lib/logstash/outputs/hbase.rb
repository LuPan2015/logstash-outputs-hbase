# encoding: utf-8
require "logstash/outputs/base"
require "logstash/namespace"
require 'stargate'

class LogStash::Outputs::HBase < LogStash::Outputs::Base
    config_name 'hbase'
    milestone 0

    #host with port for hbase rest api.  Default port is 8080
    config :uri, :validate => :string, :required => true
    
    #name of table in hbase
    config :table, :validate => :string, :required => true

    #name of column family
    config :column_family, :validate => :string

    public
    def register
	   client = Stargate::Client.new("http://localhost:8080")
    end

    public
    def receive(event)
	   event_hash = event.to_hash
	   col_arr = []
	   #store each column as the correct hash format
	   event_hash.keys.each do |key|
		  col_arr  = {:name => @column_family + ":" + key, :value => event_hash[key]} 
	   end

	   result = @client.create_row(@table, Random.rand, Time.now.to_i, col_arr); 
	   puts result; 
    end
end
