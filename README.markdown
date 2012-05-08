# Parse.com Test

A simple application demonstrates how to use parse.com ios SDK with RubyMotion.

Please follow parse.com quick start for more info:
https://parse.com/apps/quickstart

# Run Example

Download parse SDK for existing ios project.
Copy Parse.framework into app/vendor.

Add your api and client key in app/app_delegate.rb.

    > rake

# Note

In the current version of RubyMotion (1.2) a minor modification is required
for parse SDK to work.

    vi /Library/RubyMotion/lib/motion/project/vendor.rb

On line 38 change:

    source_files = (opts.delete(:source_files) or Dir.glob('*.{c,m,cpp,cxx,mm,h}'))

To:

    source_files = (opts.delete(:source_files) or Dir.glob('**/*.{c,m,cpp,cxx,mm,h}'))

