# Description:
#   Return Hubot's external IP address (via h3manth.com)
# 
# Commands:
#   hubot ip - Returns Hubot server's external IP address 
module.exports = (robot) ->
  robot.respond /ip/i, (msg) ->
    msg.http("http://h3manth.com/ip.php")
      .get() (err, res, jsnp) ->
        switch res.statusCode
          when 200
						data = jsnp.substring jsnp.indexOf("(") + 1, jsnp.lastIndexOf(")")
            msg.send "External IP address: #{data.ip}"
          else
            msg.send "There was an error getting external IP (status: #{res.statusCode})."
