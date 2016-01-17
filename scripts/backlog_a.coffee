# Description:
#   Backlog to Slack
#
# Commands:
#   None

module.exports = (robot) ->
  robot.router.post "/moga-bot/backlog/:room", (req, res) ->
    room = req.params.room
    body = req.body

    console.log 'body type = ' + body.type
    console.log 'room = ' + room

    try
      # switch body.type
      #   when 1
      #     label = '課題の追加'
      #   when 2, 3
      #     # 「更新」と「コメント」は実際は一緒に使うので、一緒に。
      #     label = '課題の更新'
      #   else
      #     # 課題関連以外はスルー
      #     return
      #
      # # 投稿メッセージを整形
      # backlogUrl = ''
      # url = "#{backlogUrl}view/#{body.project.projectKey}-#{body.content.key_id}"
      # if body.content.comment?.id?
      #   url += "#comment-#{body.content.comment.id}"
      #
      # message = "*Backlog #{label}*\n"
      # message += "[#{body.project.projectKey}-#{body.content.key_id}] - "
      # message += "#{body.content.summary} _by #{body.createdUser.name}_\n>>> "
      # if body.content.comment?.content?
      #   message += "#{body.content.comment.content}\n"
      # message += "#{url}"
      # console.log 'message = ' + message

      # Slack に投稿
      robot.messageRoom room, "hoge"
      res.end "OK"

    catch error
      robot.send
      res.end "Error"
