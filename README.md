# ArchivesSpace Export Service

The ArchivesSpace Export Service provides a framework for scheduled EAD export and publication.
It consists of an ArchivesSpace plug-in and an application that uses the ArchivesSpace API but
which is otherwise independent of ArchivesSpace and can be deployed anywhere so long as it has
access to the ArchivesSpace backend.

The ArchivesSpace Export Service was developed by Hudson Molonglo for Yale University.

## Installation

This git repository contains both the ArchivesSpace plug-in and the Export Service Application.
Download a release from:
  https://github.com/hudmol/archivesspace_export_service/releases

### Plug-in
To install the plug-in, unzip the release into:

    /path/to/archivesspace/plugins

Like this:

    $ cd /path/to/archivesspace/plugins
    $ unzip archivesspace_export_service-vX.X.zip

Then enable the plugin by editing the file in `config/config.rb`:

    AppConfig[:plugins] = ['some_plugin', 'archivesspace_export_service']

(Make sure you uncomment this line (i.e., remove the leading '#' if present))

Then restart ArchivesSpace.

### Exporter Application
To install the Exporter Application unzip the release to wherever you want to deploy it.
This could be where the plug-in is deployed, in which case the unzipped release under plugins
can be used.

The Exporter Application is entirely contained within the `exporter_app` directory.

The external only dependency is java. Make sure you have installed the correct version of java:

     java -version

It should be version 1.6 or newer.

Run the application like this:

    $ cd /path/to/archivesspace_export_service/exporter_app
    $ bin/startup.sh

And shut it down like this:

    $ cd /path/to/archivesspace_export_service/exporter_app
    $ bin/shutdown.sh

See below for configuration options.

