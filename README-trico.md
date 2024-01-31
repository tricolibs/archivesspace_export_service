For Trico usage in the Aspace-Docker repo, we've modified `exporter_app/config/config.rb` so that
we can set the user and password for export via environment variables. This is just for development--look in the config file on the production server for the credentials.

We've also modified `exporter_app/config/jobs.rb` so that it contains
our real jobs.

And we added an XSLT file to remove unwanted ARKs in the EAD.