# encoding: utf-8
require "logstash/outputs/base"
require "logstash/namespace"
require "active_support"
require 'massive_record'

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
	 conn = MassiveRecord::Wrapper::Connection.new(:host => 'localhost', :port => 9090)
	 conn.open
    end

    public
    def receive(event)
    end
end
