###
Client and Server Routes
###
Router.configure
  loadingTemplate: 'Loading'
  layoutTemplate: 'MasterLayout'
  notFoundTemplate: 'NotFound'
  templateNameConverter: 'upperCamelCase'
  routeControllerNameConverter: 'upperCamelCase'

Router.map ->
  @route 'fix',path: "/"
  @route 'index',path: "/index"
