package PipelinesReporting::Schema::Result::Lane;
use base qw/DBIx::Class::Core/;

# pipeline database

__PACKAGE__->table('latest_lane');
__PACKAGE__->add_columns(qw/row_id name lane_id library_id processed/);
__PACKAGE__->set_primary_key('row_id');
__PACKAGE__->belongs_to(library => 'PipelinesReporting::Schema::Result::Library', { 'foreign.library_id' => 'self.library_id' });

1;
