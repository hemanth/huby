# Description:
#   Return Hubot's external IP address (via ipconfig.me)
# 
# Commands:
#   hubot ip - Returns Hubot server's external IP address 
module.exports = (robot) ->
  robot.respond /ip/i, (msg) ->
    msg.http("http://ipconfig.me/ip")
      .get() (err, res, ip) ->
        switch res.statusCode
          when 200
            msg.send "External IP address: #{ip}"
          else
            msg.send "There was an error getting external IP (status: #{res.statusCode})."
