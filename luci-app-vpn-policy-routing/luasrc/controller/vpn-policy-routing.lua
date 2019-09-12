module("luci.controller.vpn-policy-routing", package.seeall)
function index()
	if nixio.fs.access("/etc/config/vpn-policy-routing") then
		if luci.dispatcher.lookup and luci.dispatcher.lookup("admin/vpn") then
			entry({"admin", "vpn", "vpn-policy-routing"}, cbi("vpn-policy-routing"), _("VPN Policy Routing"))
		else
			entry({"admin", "services", "vpn-policy-routing"}, cbi("vpn-policy-routing"), _("VPN Policy Routing"))
		end
	end
end
