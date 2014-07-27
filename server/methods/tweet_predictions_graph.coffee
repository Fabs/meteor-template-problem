###
 TweetPredictionsGraph Methods
###

Meteor.methods {
  "tweet_predictions_method": (type) ->
    BASE_DOMAIN = "http://scipopulis.com/coletivo/"
    url = "dashboard/tweets/statistics.json"
    if type != null
      url += "?type="+type

    console.log BASE_DOMAIN+url
    return Meteor.http.get(BASE_DOMAIN+url, {timeout: 30000})
}
###
Example:
  '/app/tweet_predictions_graph/update/email': (email) ->
    Users.update _id: this.userId, $set: 'profile.email': email
###
