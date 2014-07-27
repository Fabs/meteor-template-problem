###
 TweetPredictionsGraph Methods 
###

Meteor.methods {}
###
Example:
  '/app/tweet_predictions_graph/update/email': (email) ->
    Users.update _id: this.userId, $set: 'profile.email': email
### 
