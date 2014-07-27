Template.CardOlhoTwitterPredictions.events {}

Template.CardOlhoTwitterPredictions.helpers {}

Template.CardOlhoTwitterPredictions.created = ->
  # @data.chart = Morris.Bar({
  #   element : 'tweets-chart-1',
  #   data : [],
  #   xkey : 'd',
  #   ykeys : [ 'o', 'i', 'p','s' ],
  #   labels : [ 'Outros','Informação','Problema', 'Solução' ],
  #   barColors: ['#39B3D7','#47A447','#D9534F','#F0AD4E'],
  #   stacked: true
  # })

Template.CardOlhoTwitterPredictions.rendered = ->
  Meteor.defer () =>
    type = @data.type
    id = @data._id
    if not Session.get 'card-prediction-'+id
      Session.set 'card-prediction-'+id, true
      Meteor.call 'tweet_predictions_method', type, (error,result) ->
        $("#tweets-chart-"+id).append(result.content.length)
        Morris.Bar({
          element : 'tweets-chart-'+id,
          data : JSON.parse(result.content),
          xkey : 'd',
          ykeys : [ 'o', 'i', 'p','s' ],
          labels : [ 'Outros','Informação','Problema', 'Solução' ],
          barColors: ['#39B3D7','#47A447','#D9534F','#F0AD4E'],
          stacked: true
        })


Template.CardOlhoTwitterPredictions.destroyed = ->
