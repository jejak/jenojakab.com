$(document).foundation()

pathname = window.location.pathname
photospath = '/photos.html'

initMPInstance = (ref, collection) ->
  datasource = for photo in collection.photos
    {
      'src': collection.path + photo.href
      'title': photo.title
    }
  console.log("initMPInstance(): datasource=#{JSON.stringify(datasource)}")
  $('#photo-collection-link-' + ref)
    .magnificPopup(
      'items': datasource
      'gallery':
        'enabled': true
      'type':
        "image"
    )

initMP = ->
  collections = config.photo_collections
  initMPInstance i + 1, collection for collection, i in collections

$(document).ready () ->
  switch
    when (pathname is photospath)
      initMP()
    else
      "ok"
