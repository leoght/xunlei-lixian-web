
{Cc, Ci} = require("chrome")
gFlashGotService = Cc["@maone.net/flashgot-service;1"]?.getService()?.wrappedJSObject

download_tasks = (tasks) ->
	referrer = 'http://dynamic.cloud.vip.xunlei.com/'

	links = []
	links.referrer = referrer

	for t in tasks
		links.push
			href: t.download_url
			fname: t.name
			description: t.name

	gFlashGotService.download links

if gFlashGotService?
	module.exports =
		download_tasks: download_tasks
else
	module.exports = undefined
