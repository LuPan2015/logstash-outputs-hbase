# encoding: utf-8
require "logstash/devutils/rspec/spec_helper"
require "logstash/outputs/hbase"
describe "outputs/hbase" do
    let (:hbase_config) {
       {'uri' => 'localhost:8080', 'table' => 'users'}
    }

    it "should register" do
       output = LogStash::Plugin.lookup("output", "hbase").new(hbase_config)
       expect {output.register}.to_not raise_error
    end
end

describe "ship lots of events to a file" do
    config <<-CONFIG
     input {
       generator {
	   message => {"c" => "v"}
	   type => "generator"
       }   
     }   
     output {
       hbase {
	   uri => "localhost:8080"
	   table => "users"
	   column_family => "cf1"
       }   
     }   
    CONFIG

    agent do
       puts "some testing"
    end # agent
end 
