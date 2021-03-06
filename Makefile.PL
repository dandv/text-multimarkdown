# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

# Define metadata
name            'Text-MultiMarkdown';
author          'Tomas Doran <bobtfish@bobtfish.net>';
license         'bsd';
all_from        'lib/Text/MultiMarkdown.pm';
resources repository => 'http://bobtfish.github.com/text-multimarkdown/tree/master';

# Specific dependencies
perl_version    '5.008';
requires        'Digest::MD5'     => undef;
requires        'Text::Markdown'  => '1.0.24';
requires        'Encode'          => undef;
build_requires  'Test::More'      => '0.42';
build_requires  'Test::Exception' => undef;
build_requires  'List::MoreUtils' => undef;
build_requires  'File::Slurp'     => '9999.08';
build_requires  'FindBin'         => undef;

# Scripts I install
prompt_script('script/MultiMarkdown.pl');

WriteAll;

