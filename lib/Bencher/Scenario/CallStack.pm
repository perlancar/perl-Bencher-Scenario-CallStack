package Bencher::Scenario::CallStack;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark different methods to produce call stack',
    participants => [
        {
            name => 'Devel::Caller::Util::callers',
            fcall_template => 'Devel::Caller::Util::callers()',
            result_is_list => 1,
        },
        {
            name => 'Devel::Caller::Util::callers with-args',
            fcall_template => 'Devel::Caller::Util::callers(0, 1)',
            result_is_list => 1,
        },
        {
            fcall_template => 'Carp::ret_backtrace()',
        },
    ],
};

1;
# ABSTRACT:
