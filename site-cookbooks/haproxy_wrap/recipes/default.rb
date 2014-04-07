include_recipe 'haproxy'


tt = resources('template[/etc/haproxy/haproxy.conf]')
tt.source 'haproxy.conf.erb'
tt.cookbook 'haproxy_wrapper'