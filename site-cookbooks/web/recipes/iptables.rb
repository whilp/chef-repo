#
# Cookbook Name:: web
# Recipe:: iptables
#
# Copyright 2012, Jeremiah Snapp
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe"iptables"

iptables_rule "port_apache" do
  cookbook "apache2"
  enable   true
  variables :port => "80"
end

iptables_rule "port_https" do
  cookbook "web"
  enable   true
  variables :port => "443"
end
