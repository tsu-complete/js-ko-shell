
(( factory ) ->
  if "function" is typeof define and define.amd
    define ["knockout"], factory
  else if "undefined" isnt typeof module
    factory require "knockout"
  else
    factory window.ko
) ( ko ) ->

  ##
  # knockout base object
  # @namespace ko

  ##
  # root array of content templates
  # @memberof ko
  # @member root
  ko.root = ko.observableArray [ ]

  loader = ->
    for comment in [
        " ko foreach:$data ", " ko template:$data ", " /ko ", " /ko "
    ]
      document.body.appendChild document.createComment comment

    ko.applyBindings ko.root, document.body

  if window.addEventListener
    window.addEventListener "load", loader, false
  else if window.attachEvent
    window.attachEvent "onload", loader

