# Disabling all security for now (NEED TO REMEMBER TO RE ENABLE THIS)
c.NotebookApp.token = ''
c.NotebookApp.password = ''

# hash is "juniper"
# c.NotebookApp.password = 'sha1:9fd6b8a45182:3cdeb2d4e19729e0bbb6504c5c3ebc98de5d23b1'
# c.NotebookApp.password_required = False

c.NotebookApp.notebook_dir = '/antidote'

# We need to do this since we want to permit the use of this inside an iframe
# https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/frame-ancestors
c.NotebookApp.tornado_settings = { 'headers': { 'Content-Security-Policy': "frame-ancestors 'self' https://*.nrelabs.io/" } }