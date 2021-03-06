package  MyApp::View::Footer;

use Moo;

extends 'Catalyst::View::Template::Lace';

has copydate => (is=>'ro', required=>1);

sub process_dom {
  my ($self, $dom) = @_;
  $dom->at('#copy')
    ->append_content($self->copydate);
}

sub template {
  my $class = shift;
  return q[
    <section id='footer'>
      <hr/>
      <p id='copy'>copyright </p>
      <view-author author='John' />
      <view-author author='Dan' />
    </section>
  ];
}

1;
