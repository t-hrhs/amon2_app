use File::Spec;
use File::Basename qw(dirname);
my $basedir = File::Spec->rel2abs(File::Spec->catdir(dirname(__FILE__), '..'));
my $dbpath = File::Spec->catfile($basedir, 'db', 'development.db');
+{
    #'DBI' => [
    #   "dbi:SQLite:dbname=$dbpath", '', '',
    #    +{
    #        sqlite_unicode => 1,
    #    }
    #],
    #TODO : root権限をそのまま丸出しにしているので修正が必要
    'DBI' => [
        'dbi:mysql:data_base=my_app', 'root', 'toshibar',
        +{ mysql_enable_utf8 => 1 },
    ],
};
