# Routing III: Adding Non-default Routes
# You are not limited to the eight default RESTful routes. You can create any number of additional member and collection routes.

# Adding member routes
# To create a new member route, add a member block into the resource block:

resources :photos do
    member do
        get 'preview'
    end
end

# Of course, you don't really need block syntax if you are adding only one new member route. In the above example, you could accordingly use the alternate syntax of passing :on to the route:

resources :photos do
  get 'preview', on: :member
end

# Both of the code snippets above produce the same effect: a GET request for /photos/1/preview will be routed to the preview action of PhotosController. Both will also create a preview_photo_url helper.

# (You could even omit on: :member in the second example, but that would change the way you interface with the route: the photo's id would be stored in params under :photo_i d instead of just :id, and the route helper would be photo_preview_url instead of preview_photo_url.)

# Because these are member routes, you can only use get, patch, post, put, or delete as HTTP verbs in this construction.

# Adding collection routes
# As you might expect, you can add a new collection route using the same syntax as above with collection substituted for member:

resources :photos do
  collection do
    get 'search'
  end
end

# or

resources :photos do
  get 'search', on: :collection
end

# These two options for adding new collection routes will both route a GET request for /photos/search to the search action of PhotosController and create a search_photos_url helper.