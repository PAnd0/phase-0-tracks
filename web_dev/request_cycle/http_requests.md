Common status codes:

200 OK
300 Multiple Choices
301 Moved Permanently
302 Found
304 Not Modified
307 Temporary Redirect
400 Bad Request
401 Unauthorized
403 Forbidden
404 Not Found
410 Gone
500 Internal Server Error
501 Not Implemented
503 Service Unavailable
550 Permission denied

GET - Requests data from a specified resource
POST - Submits data to be processed to a specified resource

A cookie is a small piece of data sent from a website and stored in the user's web browser while the user is browsing.
-If the user requests a page of the site, but the request contains no cookie, the server presumes that this is the first page visited by the user. So the server creates a unique identifier (typically a string of random letters and numbers) and sends it as a cookie back to the browser together with the requested page.
-From this point on, the cookie will automatically be sent by the browser to the server every time a new page from the site is requested. The server sends the page as usual, but also stores the URL of the requested page, the date/time of the request, and the cookie in a log file.