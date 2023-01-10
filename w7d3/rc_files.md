RC Files
You may recall adding commands to a .bashrc or .zshrc when you were setting up your shell environment. (If not, that's okay!) The rc at the end of the filenames stands for "run commands". Not surprisingly, then, rc files contain commands that will be executed when the associated program is run.

This reading will show you how to use rc files to specify a default set of options to use with rails new.

Using ~/.railsrc to set default options for a new Rails app
In this course, you almost always add the same three or four flags when creating a new Rails project:

rails new my-app -T --minimal -d=postgresql
(and often -G).

When you have a standard setup for creating Rails projects, you can save time by storing that setup in a .railsrc file in your home directory. For instance, for App Academy, you might put the following in your ~/.railsrc file:

# ~/.railsrc

-T
--minimal
-d=postgresql
When you create a new Rails app, Rails will read the options specified in ~/.railsrc and add them to any options specified on the command line. So, for example, if you have set up your ~/.railsrc as above, you could create an app with the standard App Academy flags and add in -G by running

rails new my-app -G
Because of the rc file, that command will effectively expand to include the -T, --minimal, and -d=postgresql flags in addition to the -G flag.

What if you then want to create an app that does use Unit Tests (i.e., no -T flag)? Just tell Rails to skip the ~/.railsrc file by including the --no-rc flag on the command line:

rails new my-app --no-rc --minimal -d=postgresql
Setting options with other files
Typing three flags on the command line for every app is not so bad. Maybe it's worth setting up an rc file for that, maybe not. Recognize, however, that --minimal is actually doing a lot of work behind the scenes for you. That one flag essentially expands into twelve additional ones:

--skip-action-cable
--skip-action-mailer
--skip-action-mailbox
--skip-action-text
--skip-active-job
--skip-active-storage
--skip-bootsnap
--skip-dev-gems
--skip-javascript
--skip-jbuilder
--skip-system-test
--skip-hotwire
Before Rails 6.1 introduced the --minimal flag, a programmer would have to include all 12 of those flags on the command line to create an app as streamlined as the apps you produce using --minimal. Now you can start to see the real benefit to setting up a ~/.railsrc file.

What if you want to include Action Cable to enable chat in a few apps, however? Then you couldn't use the --minimal flag because it would skip Action Cable. You also wouldn't want to configure a ~/.railsrc file for just a few apps, especially if you might be creating more standard apps in between. You could simply type all of those flags (minus --skip-action-cable) onto the command line, but Rails offers a better way: you can use any file as the effective rc file.

You could accordingly copy all of the options above into a file--say, options.rc (you can name it anything you like; you don't even need the .rc extension)--and delete --skip-action-cable. Then tell Rails to use that file as the rc file using the --rc option:

rails new --rc=options.rc -d=postgresql -T
Voilà! The command above will produce a Rails app equivalent to a --minimal build with Action Cable added back in. The best part? You can reuse this options.rc file whenever you want to recreate this configuration.

Note: This command assumes that options.rc is in the directory where you are running rails new. If it is not, just provide the proper path. Also, Rails will recognize only one rc file per new command, so using the --rc flag will cause Rails to skip loading a ~/.railsrc file.

What you have learned
