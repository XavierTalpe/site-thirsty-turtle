require 'rack'
require 'rack/contrib/try_static'

use Rack::TryStatic,
    :root => "_site",
    # Match all incoming requests.
    :urls => %w[/],
    # List of files to try.
    :try => ['.html', 'index.html', '/index.html']

# Otherwise show 404 page.
run lambda { [404, {'Content-Type' => 'text/html'}, ['Error 404. Page not found.']] }
