
local plugin = {
  PRIORITY = 1000, -- set the plugin priority, which determines plugin execution order
  VERSION = "0.1",
}

function plugin:init_worker()

  -- your custom code here
  kong.log.debug("saying hi from the 'init_worker' handler")

end --]]


-- runs in the 'access_by_lua_block'
function plugin:access(plugin_conf)

  -- your custom code here
  kong.log.inspect(plugin_conf)   -- check the logs for a pretty-printed config!
  kong.service.request.set_header(plugin_conf.request_header, "this is on a request")

end --]]


-- runs in the 'header_filter_by_lua_block'
function plugin:header_filter(plugin_conf)

  -- your custom code here, for example;
  kong.response.set_header(plugin_conf.response_header, "this is on the response")

end --]]

-- return our plugin object
return plugin
